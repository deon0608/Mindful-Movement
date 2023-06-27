application

//Mindful Movement App 

//File: mindful_movement.rs

//Imports
use std::time;
use std::thread;

//Constant declarations
const MIND_FOCUS_LENGTH: u64 = 5; 
const BREATH_LENGTH: u64 = 10;
const WAIT_LENGTH: u64 = 2;
const REPS: i32 = 10;

//Function declarations
fn begin_mindful_movement() {
    println!("Welcome to Mindful Movement!");
    println!("We are going to practice movements to help you to be mindful");
    println!("Let's do 10 reps of each exercise.");
    for i in 1..REPS+1 {
        println!("Starting Move #{}",i);
        focus_mind();
        breath_deeply();
        rest_body();
        println!("Move #{} complete!",i);
    }
    println!("Congratulations! You just completed Mindful Movement!");
}

// Function to focus the mind
fn focus_mind() {
    thread::sleep(time::Duration::from_secs(MIND_FOCUS_LENGTH));
    println!("Focus your mind for {} seconds.", MIND_FOCUS_LENGTH);
}

//Function to breath deeply
fn breath_deeply() {
    thread::sleep(time::Duration::from_secs(BREATH_LENGTH));
    println!("Breathe deeply for {} seconds.", BREATH_LENGTH);
}

//Function to rest the body
fn rest_body() {
    thread::sleep(time::Duration::from_secs(WAIT_LENGTH));
    println!("Rest for {} second.", WAIT_LENGTH);
}

//Main function
fn main() {
    begin_mindful_movement();
}