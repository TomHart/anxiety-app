<template>
	<div class="w-100 h-full flex flex-col justify-around">
		<h1 class="text-5xl mb-8">{{ title }}</h1>
		<p class="text-xl">{{lead}}</p>
		<textarea v-model="answer" ref="answer" class="border-2 border-green-300 rounded shadow p-4 w-full my-8 h-32"></textarea>

		<button class="bg-green-500 shadow text-white p-4" @click="$emit('next'); answer = ''; $refs['answer'].focus()">
			{{buttonText}}
		</button>
	</div>
</template>

<script>
export default {
	name: 'Step',

	props: {
		title: String,
		lead: '',
		buttonText: {
			type: String,
			default: "Next Step"
		}
	},
	data() {
		return {
			answer: ''
		}
	}
}
</script>
