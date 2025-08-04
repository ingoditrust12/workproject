void main() {
    char *video_memory = (char *)0xb8000;
    const char *msg = "Hello from kernel!";

    for (int i = 0; msg[i] != '\0'; i++) {
        video_memory[i * 2] = msg[i];      // Character
        video_memory[i * 2 + 1] = 0x07;    // Attribute byte (white on black)
    }

    while (1); // Halt
}

