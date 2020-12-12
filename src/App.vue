<template>
	<div class="h-full">
		<step
			v-if="!finished"
			:title="steps[step]"
			:button-text="buttons[step]"
			:lead="leads[step]"
			@next="next"
		/>

		<div class="h-full flex flex-col justify-around" v-else>
			<h1 class="text-5xl">Well done!</h1>
			<p class="text-2xl">You're done great. You've gotten all of that off your chest, doesn't that feel better?</p>
			<p class="text-2xl">Remember, you're allowed to be happy, and allowed to relax, and you don't need to worry about anything</p>
		</div>
	</div>
</template>

<script>
import Step from './components/Step.vue'

export default {
	name: 'App',
	components: {
		Step
	},
	data() {
		return {
			step: 0,
			steps: [
				'What are you thinking?',
				"What's your evidence that supports that thought?",
				"Now, what evidence do you have that doesn't support that thought?",
				'What is an alternative balanced though?',
				'How do you feel now?'
			],
			leads: [
				'',
				'Remember feelings aren\'t evidence',
				'',
				'',
				'This is the last question, well done!'
			],
			buttons: [
				'Next Step',
				'Great job, keep going',
				'Onto the next question',
				'One more to go',
				'Finish'
			],
			finished: false
		}
	},
	methods: {
		next(answer) {
			if (this.step < this.steps.length - 1) {
				this.step++;
			} else {
				this.finished = true;
			}
		}
	}
}
</script>
