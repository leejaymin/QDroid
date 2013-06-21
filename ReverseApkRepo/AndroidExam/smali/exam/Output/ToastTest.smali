.class public Lexam/Output/ToastTest;
.super Landroid/app/Activity;
.source "ToastTest.java"


# instance fields
.field count:I

.field mClickListener:Landroid/view/View$OnClickListener;

.field mToast:Landroid/widget/Toast;

.field str:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lexam/Output/ToastTest;->mToast:Landroid/widget/Toast;

    .line 25
    new-instance v0, Lexam/Output/ToastTest$1;

    invoke-direct {v0, p0}, Lexam/Output/ToastTest$1;-><init>(Lexam/Output/ToastTest;)V

    iput-object v0, p0, Lexam/Output/ToastTest;->mClickListener:Landroid/view/View$OnClickListener;

    .line 9
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const v0, 0x7f03004e

    invoke-virtual {p0, v0}, Lexam/Output/ToastTest;->setContentView(I)V

    .line 18
    const v0, 0x7f0c005f

    invoke-virtual {p0, v0}, Lexam/Output/ToastTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lexam/Output/ToastTest;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    const v0, 0x7f0c0060

    invoke-virtual {p0, v0}, Lexam/Output/ToastTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lexam/Output/ToastTest;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    const v0, 0x7f0c0061

    invoke-virtual {p0, v0}, Lexam/Output/ToastTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lexam/Output/ToastTest;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    const v0, 0x7f0c0062

    invoke-virtual {p0, v0}, Lexam/Output/ToastTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lexam/Output/ToastTest;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    const v0, 0x7f0c0063

    invoke-virtual {p0, v0}, Lexam/Output/ToastTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lexam/Output/ToastTest;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    return-void
.end method
