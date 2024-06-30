#include <iostream>
#include <cstdint>

using namespace std;

class dog
{
    public:
        dog()
        {
            cout<< "hi";
        }
        dog(unsigned int a)
        {
            cout << "hello";
        }
        dog(int a) = delete;
        // {
        //     dog();
        //     cout<< "hello";
        // }
        
        ~dog()
        {
            cout<<"bye";
        }
        int fun(int);
};

constexpr int A(int x) 
{
    return x+1;
}
#include <vector>


struct alpha 
{
    int a;
    char c;
    float b;
};

struct beta 
{
    int a;
    char c;
    float b;
};

// typedef bool (*lambda)(struct alpha x );
template <typename lambda>
void filter(lambda f, vector<struct alpha> v)
{
    for(auto i: v)
    {
        if(f(i))
        {
            cout<<"hey peeps"<<endl;
            cout<<  i.a << endl;
        }
        else
        {
            cout<<"hey guys"<<endl;
        }
    }
}


void abcd (auto v)
{
   //cout<<v[0].a<<endl;
}


    int z =5;

    int& sum(int a,int b)
    {    
        return z = (a+b);
    }

int main(void)
{
    int a = -1;
    unsigned int b = 1;
    // dog d(a);
    printf("\n%x", a);
    printf("\n%x", b);

    int16_t hex_number = 0xAA;
    printf("\n%x", hex_number);
    printf("\n%d", hex_number);
    printf("\n%o", hex_number);
    int16_t hex_coppy = hex_number;
    printf("\n%d", hex_coppy);
    uint16_t hex_coppy2 = hex_number;
    printf("\n%d", hex_coppy2);
    int n;
    cin>>n;
    int y = A(n);
    cout<< "\n"<<y;
     cout<< "\n";
     cout << "+++++++++++++++++++\n";

    vector<struct alpha> v = {{1,'c',1.1},{3,'d',3.3}};



    filter([](auto x){return x.a  <z;}, v);

    abcd(v);

    //int ss=5;
   const int& lval_ref = 5;

   cout<<sum(3,5)<<endl;


   sum(3,4)=5; //error
    return 0;
}
