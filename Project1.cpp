//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
#include <tchar.h>
#include <Data.DB.hpp>
//---------------------------------------------------------------------------
USEFORM("Unit5.cpp", Form5);
USEFORM("Unit6.cpp", Form6);
USEFORM("Unit7.cpp", Form7);
USEFORM("Unit8.cpp", Form8);
USEFORM("Unit4.cpp", Form4);
USEFORM("Unit1.cpp", Form1);
USEFORM("Unit10.cpp", Form10);
USEFORM("Unit2.cpp", Form2);
//---------------------------------------------------------------------------
int WINAPI _tWinMain(HINSTANCE, HINSTANCE, LPTSTR, int)
{
	try
	{
		Application->Initialize();
		Application->MainFormOnTaskBar = true;
		Application->CreateForm(__classid(TForm1), &Form1);
		Application->CreateForm(__classid(TForm2), &Form2);
		Application->CreateForm(__classid(TForm4), &Form4);
		Application->CreateForm(__classid(TForm5), &Form5);
		Application->CreateForm(__classid(TForm6), &Form6);
		Application->CreateForm(__classid(TForm7), &Form7);
		Application->CreateForm(__classid(TForm8), &Form8);
		Application->CreateForm(__classid(TForm10), &Form10);
		Application->Run();
	}
	catch (Exception &exception)
	{
		Application->ShowException(&exception);
	}
	catch (...)
	{
		try
		{
			throw Exception("");
		}
		catch (Exception &exception)
		{
			Application->ShowException(&exception);
		}
	}
	return 0;
}
//---------------------------------------------------------------------------
