.class public Lexam/Output/SoundPoolTest;
.super Landroid/app/Activity;
.source "SoundPoolTest.java"


# instance fields
.field ddok:I

.field mClickListener:Landroid/view/View$OnClickListener;

.field pool:Landroid/media/SoundPool;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    new-instance v0, Lexam/Output/SoundPoolTest$1;

    invoke-direct {v0, p0}, Lexam/Output/SoundPoolTest$1;-><init>(Lexam/Output/SoundPoolTest;)V

    iput-object v0, p0, Lexam/Output/SoundPoolTest;->mClickListener:Landroid/view/View$OnClickListener;

    .line 10
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const v0, 0x7f03004c

    invoke-virtual {p0, v0}, Lexam/Output/SoundPoolTest;->setContentView(I)V

    .line 18
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lexam/Output/SoundPoolTest;->pool:Landroid/media/SoundPool;

    .line 19
    iget-object v0, p0, Lexam/Output/SoundPoolTest;->pool:Landroid/media/SoundPool;

    const v1, 0x7f050002

    invoke-virtual {v0, p0, v1, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lexam/Output/SoundPoolTest;->ddok:I

    .line 21
    const v0, 0x7f0c005a

    invoke-virtual {p0, v0}, Lexam/Output/SoundPoolTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lexam/Output/SoundPoolTest;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    const v0, 0x7f0c005b

    invoke-virtual {p0, v0}, Lexam/Output/SoundPoolTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lexam/Output/SoundPoolTest;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    const v0, 0x7f0c005c

    invoke-virtual {p0, v0}, Lexam/Output/SoundPoolTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lexam/Output/SoundPoolTest;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    const v0, 0x7f0c005d

    invoke-virtual {p0, v0}, Lexam/Output/SoundPoolTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lexam/Output/SoundPoolTest;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    return-void
.end method
