#include "mytype.h"
#include "Student.h"

MyType::MyType(QObject *parent) :
    QObject(parent),
    m_message("")
{

}

void MyType::testlib()
{
     Student student("johnddfsfdfdfds");
     student.display();
}

MyType::~MyType() {

}

