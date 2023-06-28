//Imports 
import java.util.Random

//Constants
const val MINDFULNESS_DURATION: Int = 5 //This is the desired number of minutes you want to spend in the mindful movement

//Function 
fun mindfulMovement() {
    println("Welcome to Mindful Movement, Let's get started!")
    println("We'll begin with a few stretches")
    
    //Stretch 1 - Neck Rolls 
    var neckRolls: Int = 0
    println("Begin by slowly rolling your neck in a circular motion for 10 seconds")
    Thread.sleep(10000)
    println("Good job! Now roll your neck the other way for 10 seconds")
    Thread.sleep(10000)
    neckRolls += 2
    if (neckRolls == 2) {
        println("Neck rolls complete. You can move onto the next stretch")
    }
    
    //Stretch 2 - Shoulder Rolls 
    var shoulderRolls: Int = 0
    println("Now let's do some shoulder rolls for 10 seconds")
    Thread.sleep(10000)
    println("Good job! Now roll your shoulders the other way for 10 seconds")
    Thread.sleep(10000)
    shoulderRolls += 2
    if (shoulderRolls == 2) {
        println("Shoulder rolls complete. You can move onto the next stretch")
    }

    //Stretch 3 - Arm Raises 
    var armRaises: Int = 0
    println("Now let's do some arm raises for 10 seconds")
    Thread.sleep(10000)
    println("Good job! Now raise your arms the other way for 10 seconds")
    Thread.sleep(10000)
    armRaises += 2
    if (armRaises == 2) {
        println("Arm raises complete. You can move onto the next stretch")
    }

    //Stretch 4 - Hip Rotations 
    var hipRotations: Int = 0
    println("Now let's do some hip rotations for 10 seconds")
    Thread.sleep(10000)
    println("Good job! Now rotate your hips the other way for 10 seconds")
    Thread.sleep(10000)
    hipRotations += 2
    if (hipRotations == 2) {
        println("Hip rotations complete. You can move onto the next stretch")
    }

    //Stretch 5 - Side Bends 
    var sideBends: Int = 0
    println("Now let's do some side bends for 10 seconds")
    Thread.sleep(10000)
    println("Good job! Now side bend the other way for 10 seconds")
    Thread.sleep(10000)
    sideBends += 2
    if (sideBends == 2) {
        println("Side bends complete. You can move onto the next stretch")
    }

    //Stretch 6 - Standing Side Bends 
    var standingSideBends: Int = 0
    println("Now let's do some standing side bends for 10 seconds")
    Thread.sleep(10000)
    println("Good job! Now side bend the other way for 10 seconds")
    Thread.sleep(10000)
    standingSideBends += 2
    if (standingSideBends == 2) {
        println("Standing side bends complete. You can move onto the next stretch")
    }
    
    //Ending 
    println("You have now completed a Mindful Movement session. Take a deep breath and relax as you feel the effects of the stretches.")
    println("Thank you for taking part in Mindful Movement. See you again soon!")
}

//Main Function
fun main(args: Array<String>) {
    //Generate a random number 
    val randomNum = Random().nextInt(MINDFULNESS_DURATION)
    println("We are gonna practice mindful movement for $randomNum minutes")
    
    //Start Mindful Movement 
    mindfulMovement()
}