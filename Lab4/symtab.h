#define INT_TYPE 1
#define REAL_TYPE 2
#define CHAR_TYPE 3

typedef struct list_t
{
    char st_name[40];
    int st_type;
    struct list_t *next;
}list_t;

void insert(char* name, int type);
list_t* search(char *name);
int id_check(char *name);