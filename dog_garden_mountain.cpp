#include<iostream>
#include<cmath>
#include<string>

using namespace std;

//Mindful Movement program 
class MindfulMovement {
private:
    double time;
    string exercise;

public:
    MindfulMovement(double t, string e){
        time = t;
        exercise = e;
    }

    //get the time for mindful movement
    double getTime(){
        return time;
    }

    //get the exercise for mindful movement
    string getExercise(){
        return exercise;
    }

    //start the mindful movement
    void start(){
        cout << "Now starting mindful movement!" << endl;
        cout << "Time: " << getTime() << endl;
        cout << "Exercise: " << getExercise() << endl;
    }

    //end the mindful movement
    void end(){
        cout << "Now ending mindful movement!" << endl;
    }
};

//function to help user to define a mindful movement
void defineMovement(){
    double t;
    string e;
    cout << "Defining a mindful movement..." << endl;
    cout << "How long will the mindful movement be (minutes): ";
    cin >> t;
    cout << "What exercise will you do: ";
    cin >> e;
    MindfulMovement m(t, e);
    m.start();
    cout << "Enjoy your mindful movement!" << endl;
    m.end();
}

//main function
int main(){
    cout << "Welcome to Mindful Movement program!" << endl;
    defineMovement();
    cout << "Thank you for using Mindful Movement program!" << endl;
    return 0;
}