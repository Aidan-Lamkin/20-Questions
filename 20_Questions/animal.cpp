/*
	animal.cpp

	author: L. Henke and C. Painter-Wakefield
	date: 04 November 2019

	Animal/20 questions program for CSCI 262, starter code.
*/

#include <iostream>
#include <fstream>
#include <string>
#include <cstdlib>
#include <queue>


using namespace std;

class node {
public:
    string data;
    node* left;
    node* right;
};

void play_game(node*);
node* read_game_tree();
void write_game_tree(node*);
void delete_game_tree(node*);

// TODO: Add helper method templates here, such as read_preorder().
node* read_preorder(ifstream& fin);
node* insert(node* root, queue<string> archive, string last_question, string new_question , string yes_question);
/**
 * Handles showing the main menu/basic UI
 */
int main() {
	node* root = read_game_tree();
	if (root == NULL) return -1;

	while (true) {
		string tmp;
		int choice;

		cout << "Welcome to 20 questions!" << endl;
		cout << "  1) Play the game" << endl;
		cout << "  2) Save the game file" << endl;
		cout << "  3) Quit" << endl;
		cout << "Please make your selection: ";
		cin >> choice;


		switch (choice) {
    		case 1:
    			play_game(root);
    			break;
    		case 2:
    			write_game_tree(root);
    			break;
    		case 3:
    			break;
    		default:
    			cout << "Sorry, I don't understand." << endl << endl;
		}
		if (choice == 3) break;
	}

	delete_game_tree(root);
	return 0;
}

node* read_preorder(ifstream& fin){

    string word;
    getline(fin, word);
    char type = word[1];
    word = word.substr(3, word.size() - 3);
    node* root = new node;
    root->data = word;
    if(type == 'Q'){
        root->left = read_preorder(fin);
        root->right = read_preorder(fin);
    }
    else{
        root->left = nullptr;
        root->right = nullptr;
        return root;
    }

    return root;
}
/**
 * Sets up the recursive call to the read_preorder
 * @return root of the tree
 */
node* read_game_tree() {
    // TODO: Implement me. See implementation hints! Reading is more complex than it may seem.
    ifstream fin;
    fin.open("animal_game_tree.txt");
    node* root = read_preorder(fin);
	return root;
}

/**
 * Plays the game
 * @param root Root of the game tree
 */
void play_game(node* root) {
    // TODO: Implement me.
    node* current = root;
    string input;
    queue<string> questions;
    while(current != nullptr){
        input = "";
        while(input != "y" && input != "n") {
            cout << current->data << " (y/n): ";
            cin >> input;
        }
        questions.push(current->data);
        if(input == "y"){
            current = current->left;
            questions.push("YES");
        }
        if(input == "n"){
            current = current->right;
            questions.push("NO");
        }
    }

    queue<string> archive = questions;

    if(input == "y"){
        cout << "YAY! I guessed your animal!" << endl << endl;
    }
    if(input == "n"){
        cout << "BOO! I don't know!" << endl << endl;
    }

    input = "";

    while(input != "y" && input != "n") {
        cout << "Would you like to expand the game tree (y/n)? ";
        cin >> input;
    }

    cout << endl;

    if(input == "n"){
        return;
    }
    if(input == "y"){
        cout << "I asked the following:" << endl;
        while(questions.size() != 2){
            cout << questions.front() << " ";
            questions.pop();
            cout << questions.front() << endl;
            questions.pop();
        }

        string last_question = questions.front();
        cout << questions.front() << " ";
        questions.pop();

        string last_answer = questions.front();
        cout << questions.front() << endl;
        questions.pop();

        string new_question;

        cin.ignore();
        cout << "Enter a new animal in the form of a question," << endl;
        cout << "e.g., 'Is it a whale?':" << endl;
        getline(cin, new_question);

        string yes_question;

        cout << "Now enter a question for which the answer is 'yes' for your new" << endl;
        cout << "animal, and which does not contradict your previous answers:" << endl;
        getline(cin, yes_question);

        current = insert(root, archive, last_question, new_question, yes_question);

        if(root->left->data == current->data){
            root->left = current;
        }
        else if(root->right->data == current->data){
            root->right = current;
        }

    }

}
node* insert(node* root, queue<string> archive, string last_question, string new_question , string yes_question){
    if(archive.front() == last_question){
        root->data = yes_question;
        root->left = new node;
        root->right = new node;
        root->left->data = new_question;
        root->right->data = last_question;
        return root;
    }
    if(root == nullptr){
        return root;
    }
    archive.pop();
    if(archive.front() == "YES"){
        root = root->left;
        archive.pop();
        insert(root, archive, last_question, new_question , yes_question);
    }
    if(archive.front() == "NO"){
        root = root->right;
        archive.pop();
        insert(root, archive, last_question, new_question , yes_question);
    }
    return root;
}

node* write_preorder(node* root, fstream&fout){
    if(root->left != nullptr && root->right != nullptr){
        string line = "#Q " + root->data;
        fout << line << endl;
        write_preorder(root->left, fout);
        write_preorder(root->right, fout);
    }
    else{
        string line = "#A " + root->data;
        fout << line << endl;
        return root;
    }
    return root;
}
/**
 * Writes the game tree, sets up a recursive call to write_preorder();
 * @param root The root of the tree
 */
void write_game_tree(node* root) {
	// TODO: Implement me.
	fstream fout;
	fout.open("animal_game_tree.txt");

	write_preorder(root, fout);

	fout.close();
	cout << "Game file saved to animal_game_tree.txt" << endl;

}

/**
 * Deletes the game tree
 * @param root Root of the game tree
 */
void delete_game_tree(node* root) {
    // Optional. Do a post-order deletion of the game tree.
    // This isn't strictly needed as the program exits after this is called,
    // which frees up all the memory anyway.
}
