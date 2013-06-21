.class Lexam/Widget/ProgressTitle$2;
.super Ljava/lang/Object;
.source "ProgressTitle.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/Widget/ProgressTitle;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Widget/ProgressTitle;


# direct methods
.method constructor <init>(Lexam/Widget/ProgressTitle;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/Widget/ProgressTitle$2;->this$0:Lexam/Widget/ProgressTitle;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 28
    iget-object v0, p0, Lexam/Widget/ProgressTitle$2;->this$0:Lexam/Widget/ProgressTitle;

    iget v0, v0, Lexam/Widget/ProgressTitle;->mProg:I

    const/16 v1, 0x2648

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lexam/Widget/ProgressTitle$2;->this$0:Lexam/Widget/ProgressTitle;

    iget v1, v0, Lexam/Widget/ProgressTitle;->mProg:I

    add-int/lit16 v1, v1, 0xc8

    iput v1, v0, Lexam/Widget/ProgressTitle;->mProg:I

    .line 29
    :cond_0
    iget-object v0, p0, Lexam/Widget/ProgressTitle$2;->this$0:Lexam/Widget/ProgressTitle;

    iget-object v1, p0, Lexam/Widget/ProgressTitle$2;->this$0:Lexam/Widget/ProgressTitle;

    iget v1, v1, Lexam/Widget/ProgressTitle;->mProg:I

    invoke-virtual {v0, v1}, Lexam/Widget/ProgressTitle;->setProgress(I)V

    .line 30
    return-void
.end method
