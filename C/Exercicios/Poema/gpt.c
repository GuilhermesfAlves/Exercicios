#include <stdio.h>
#include <stdlib.h>

int main() {
    FILE *file = fopen("poema.bin", "rb");
    if (file == NULL) {
        perror("Error opening file");
        return 1;
    }

    // Get the size of the file
    fseek(file, 0, SEEK_END);
    long file_size = ftell(file)/5;
    fseek(file, 0, SEEK_SET);

    // Allocate memory for the poem string
    char *poem = (char *)malloc(file_size);
    if (poem == NULL) {
        perror("Memory allocation error");
        fclose(file);
        return 1;
    }

    // Initialize the poem string with spaces
    for (long i = 0; i < file_size; i++) {
        poem[i] = ' ';
    }

    // Read and process the records from the binary file
    int position;
    char character;
    while (fread(&position, sizeof(int), 1, file) == 1 && fread(&character, sizeof(char), 1, file) == 1) {
        poem[position] = character;
    }

    // Close the file
    fclose(file);

    // Print the poem
    printf("%s\n", poem);

    // Free allocated memory
    free(poem);

    return 0;
}