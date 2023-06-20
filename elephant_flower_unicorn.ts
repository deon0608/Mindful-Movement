1. import { Injectable } from '@angular/core';
2. import { MovementService } from './movement.service';
3. 
4. @Injectable({
5.   providedIn: 'root'
6. })
7. export class MindfulMovementService {
8.  
9.   constructor(private movementService: MovementService) {}
10.
11.  /**
12.   * Retrieve a list of mindful movements
13.   */
14.  getMindfulMovements(): Movement[] {
15.    const movements = this.movementService.getMovements();
16.    const mindfulMovements = movements.filter(movement => {
17.      return movement.isMindful;
18.    });
19.    return mindfulMovements;
20. }
21. 
22. /**
23.  * Performs a mindful movement
24.  * @param movementId 
25.  */
26. performMindfulMovement(movementId: string) {
27.    const movement = this.movementService.getMovementById(movementId);
28.    const mindfulMovement = movement.isMindful ? movement : null;
29.    if (mindfulMovement) {
30.        mindfulMovement.performMovement();
31.    }
32.   }
33.
34.  /**
35.   * Get the benefits of a mindful movement
36.   * @param movementId 
37.   */
38.  getMindfulMovementBenefits(movementId: string) {
39.    const movement = this.movementService.getMovementById(movementId);
40.    const mindfulBenefits = movement.isMindful
41.      ? movement.mindfulBenefits
42.      : [];
43.    return mindfulBenefits;
44.  }
45.
46.  /**
47.   * Get the duration of a mindful movement
48.   * @param movementId 
49.   */
50.  getMindfulMovementDuration(movementId: string) {
51.    const movement = this.movementService.getMovementById(movementId);
52.    const mindfulDuration = movement.isMindful ? movement.duration : 0;
53.    return mindfulDuration;
54.  }
55.
56.  /**
57.   * Get the frequency of a mindful movement
58.   * @param movementId 
59.   */
60.  getMindfulMovementFrequency(movementId: string) {
61.    const movement = this.movementService.getMovementById(movementId);
62.    const mindfulFrequency = movement.isMindful ? movement.frequency : 0;
63.    return mindfulFrequency;
64.  }
65.
66.  /**
67.   * Set the duration of a mindful movement
68.   * @param movementId 
69.   * @param duration 
70.   */
71.  setMindfulMovementDuration(movementId: string, duration: number) {
72.    const movement = this.movementService.getMovementById(movementId);
73.    if (movement.isMindful) {
74.      movement.duration = duration;
75.    }
76.  }
77.
78.  /**
79.   * Set the frequency of a mindful movement
80.   * @param movementId 
81.   * @param frequency 
82.   */
83.  setMindfulMovementFrequency(movementId: string, frequency: number) {
84.    const movement = this.movementService.getMovementById(movementId);
85.    if (movement.isMindful) {
86.      movement.frequency = frequency;
87.    }
88.  }
89.
90.  /**
91.   * Update a mindful movement
92.   * @param movementId 
93.   * @param movement 
94.   */
95.  updateMindfulMovement(movementId: string, movement: Movement) {
96.    const mindfulMovement = this.movementService.getMovementById(movementId);
97.    if (mindfulMovement.isMindful) {
98.      this.movementService.updateMovement(movementId, movement);
99.    }
100. }
101.
102. /**
103.  * Delete a mindful movement
104.  * @param movementId 
105.  */
106. deleteMindfulMovement(movementId: string) {
107.   const mindfulMovement = this.movementService.getMovementById(movementId);
108.   if (mindfulMovement.isMindful) {
109.     this.movementService.deleteMovement(movementId);
110.   }
111. }
112. 
113. /**
114.  * Create a new mindful movement
115.  * @param movement 
116.  */
117. createMindfulMovement(movement: Movement) {
118.   const mindfulMovement = {
119.     ...movement,
120.     isMindful: true,
121.   };
122.   this.movementService.createMovement(mindfulMovement);
123. }
124. 
125. }