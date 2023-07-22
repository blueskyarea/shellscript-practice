#/bin/bash

todo_file="todo.txt"

# Function to add a new task to the to-do list
add_task(){
    # Create the to-do list file if it does not exist
    touch "$todo_file"

    # Prompt user to enter the task description
    read -p "Enter the task description: " task_description

    # Get next task id
    task_id=$(tail -1 $todo_file | awk '{print $1}' | sed 's/)//')
    if [[ $task_id == '' ]]; then
        task_id=1
    else
        task_id=$(expr $task_id + 1)
    fi

    # Append the task to the to-do list file with a timestamp
    echo "$task_id) : $(date +"%Y-%m-%d %H:%M:%S"): $task_description" >> "$todo_file"

    echo "Task added to the to-do list with task_id : $task_id"
}

# Function to display the current to-do list
display_todo_list(){
    # Check if the to-do list file exists
    if [[ ! -f $todo_file ]]; then
        echo "The To-do list is not exist."
        return
    fi

    echo "Current To-Do List:"
    echo "-------------------"
    cat "$todo_file"
}

# Function to remove task from the to-do list
remove_task(){
    # Prompt user to enter the task id to remove
    read -p "Enter the task id to remove: " task_id_remove

    # Remove task from the to-do list
    sed -i "/^$task_id_remove)/d" "$todo_file"

    echo "Removed the task from the to-do list. task_id: $task_id_remove"
}

# Main menu
while true; do
    echo "------------------------"
    echo "   TO-DO LIST MANAGER   "
    echo "------------------------"
    echo "1. Add Task"
    echo "2. Display To-Do List"
    echo "3. Remove Task"
    echo "4. Quit"
    read -p "Enter your choice (1/2/3/4): " choice

    case $choice in
        1)
            add_task
            ;;
        2)
            display_todo_list
            ;;
        3)
            remove_task
            ;;
        4)
            echo "GoodBye!"
            exit 0
            ;;
        *)
            echo "Invalid choice. Please enter 1, 2, 3, or 4."
            ;;
    esac
done
