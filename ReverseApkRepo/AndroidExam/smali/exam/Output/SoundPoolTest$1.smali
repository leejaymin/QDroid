.class Lexam/Output/SoundPoolTest$1;
.super Ljava/lang/Object;
.source "SoundPoolTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Output/SoundPoolTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Output/SoundPoolTest;


# direct methods
.method constructor <init>(Lexam/Output/SoundPoolTest;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/Output/SoundPoolTest$1;->this$0:Lexam/Output/SoundPoolTest;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    const/high16 v7, 0x3f00

    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 44
    :goto_0
    return-void

    .line 32
    :pswitch_0
    iget-object v0, p0, Lexam/Output/SoundPoolTest$1;->this$0:Lexam/Output/SoundPoolTest;

    iget-object v0, v0, Lexam/Output/SoundPoolTest;->pool:Landroid/media/SoundPool;

    iget-object v1, p0, Lexam/Output/SoundPoolTest$1;->this$0:Lexam/Output/SoundPoolTest;

    iget v1, v1, Lexam/Output/SoundPoolTest;->ddok:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0

    .line 35
    :pswitch_1
    iget-object v0, p0, Lexam/Output/SoundPoolTest$1;->this$0:Lexam/Output/SoundPoolTest;

    iget-object v5, v0, Lexam/Output/SoundPoolTest;->pool:Landroid/media/SoundPool;

    iget-object v0, p0, Lexam/Output/SoundPoolTest$1;->this$0:Lexam/Output/SoundPoolTest;

    iget v6, v0, Lexam/Output/SoundPoolTest;->ddok:I

    move v8, v7

    move v9, v4

    move v10, v4

    move v11, v2

    invoke-virtual/range {v5 .. v11}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0

    .line 38
    :pswitch_2
    iget-object v0, p0, Lexam/Output/SoundPoolTest$1;->this$0:Lexam/Output/SoundPoolTest;

    iget-object v0, v0, Lexam/Output/SoundPoolTest;->pool:Landroid/media/SoundPool;

    iget-object v1, p0, Lexam/Output/SoundPoolTest$1;->this$0:Lexam/Output/SoundPoolTest;

    iget v1, v1, Lexam/Output/SoundPoolTest;->ddok:I

    const/4 v5, 0x2

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0

    .line 41
    :pswitch_3
    iget-object v0, p0, Lexam/Output/SoundPoolTest$1;->this$0:Lexam/Output/SoundPoolTest;

    iget-object v0, v0, Lexam/Output/SoundPoolTest;->pool:Landroid/media/SoundPool;

    iget-object v1, p0, Lexam/Output/SoundPoolTest$1;->this$0:Lexam/Output/SoundPoolTest;

    iget v1, v1, Lexam/Output/SoundPoolTest;->ddok:I

    move v3, v2

    move v5, v4

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0

    .line 30
    :pswitch_data_0
    .packed-switch 0x7f0c005a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
