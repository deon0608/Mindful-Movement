App

import { Component } from '@angular/core';

@Component({
  selector: 'app-mindful-movement',
  templateUrl: './mindful-movement.component.html',
  styleUrls: ['./mindful-movement.component.scss']
})

export class MindfulMovementComponent {

  public mindfulnessData = [
    {
      title: 'Basic Stretches',
      videoUrl: 'https://www.youtube.com/watch?v=6TTaVvATsdI',
      description: 'A tutorial for basic stretches to improve posture and relax the body.'
    },
    {
      title: 'Yoga for Back Pain',
      videoUrl: 'https://www.youtube.com/watch?v=7z5je6Ls7bE',
      description: 'A tutorial on how to alleviate back pain with yoga.'
    },
    {
      title: 'Simple Breathing Exercise',
      videoUrl: 'https://www.youtube.com/watch?v=kJr8iPk8wSA',
      description: 'A tutorial on how to use simple breathing exercises to relax and center the mind and body.'
    },
    {
      title: 'Tai Chi for Beginners',
      videoUrl: 'https://www.youtube.com/watch?v=E7Qm9d_y3Es',
      description: 'A tutorial on how to do the basic moves of Tai Chi for beginners.'
    },
    {
      title: 'Pilates for Core Strength',
      videoUrl: 'https://www.youtube.com/watch?v=oLT84SgJEC8',
      description: 'A tutorial on how to use Pilates exercises to strengthen your core and improve balance and posture.'
    }
  ];

  public mindfulnessObjectives = [
    {
      title: 'Improve Posture',
      description: 'Perform stretches and other mindful movements to improve posture and reduce strain on the body.'
    },
    {
      title: 'Relax the Mind and Body',
      description: 'Perform breathing exercises and other mindful movements to relax the mind and body and reduce stress levels.'
    },
    {
      title: 'Strengthen the Core',
      description: 'Perform Pilates exercises and other mindful movements to strengthen the core and improve balance and posture.'
    }
  ];

  public mindfulnessBenefits = [
    {
      title: 'Reduce Stress & Anxiety',
      description: 'Performing mindful movements can help reduce levels of stress and anxiety.'
    },
    {
      title: 'Improved Concentration',
      description: 'Performing mindful movements can help improve concentration and focus.'
    },
    {
      title: 'Pain Relief',
      description: 'Performing mindful movements can help with pain relief and management.'
    }
  ];

  public mindfulnessTips = [
    {
      title: 'Start Slow',
      description: 'Start slow and focus on your breathing. Getting in tune with your body can help you to move more mindfully.'
    },
    {
      title: 'Listen to Your Body',
      description: 'Listen to your body and go at a pace that is comfortable for you. Don\'t push yourself too hard.'
    },
    {
      title: 'Relax & Enjoy',
      description: 'Relax and enjoy the experience. Remember that it is a journey and not a race.'
    }
  ];

  public selectMindfulnessData(data: any): void {
    // code to select mindfulness data
  }

}