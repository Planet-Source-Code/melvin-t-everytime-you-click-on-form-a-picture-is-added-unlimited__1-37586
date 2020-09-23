VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   4275
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   6435
   LinkTopic       =   "Form1"
   ScaleHeight     =   4275
   ScaleWidth      =   6435
   StartUpPosition =   3  'Windows Default
   Begin VB.Image Image1 
      Height          =   300
      Index           =   0
      Left            =   120
      Picture         =   "Form1.frx":0000
      Top             =   120
      Width           =   300
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim NewElement As Integer

Private Sub Form_Click()
Load Image1(NewElement)
Image1(NewElement).Visible = True
Image1(NewElement).Top = Image1(NewElement - 1).Top
Image1(NewElement).Left = Image1(NewElement - 1).Left + 495
NewElement = NewElement + 1


'==================================================
'For Random Placement use this code:
'Image1(NewElement).Top =  CInt(Form1.Height * Rnd)
'Image1(NewElement).Left =  CInt(Form1.Width * Rnd)

'==================================================
'You can also use textboxes, command buttons.. everything"

End Sub

Private Sub Form_Load()
NewElement = 1
End Sub
