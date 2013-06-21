.class Lexam/dialog/SelectDialog3$1$1;
.super Ljava/lang/Object;
.source "SelectDialog3.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/dialog/SelectDialog3$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lexam/dialog/SelectDialog3$1;


# direct methods
.method constructor <init>(Lexam/dialog/SelectDialog3$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/dialog/SelectDialog3$1$1;->this$1:Lexam/dialog/SelectDialog3$1;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .parameter "dialog"
    .parameter "which"
    .parameter "isChecked"

    .prologue
    .line 25
    iget-object v0, p0, Lexam/dialog/SelectDialog3$1$1;->this$1:Lexam/dialog/SelectDialog3$1;

    #getter for: Lexam/dialog/SelectDialog3$1;->this$0:Lexam/dialog/SelectDialog3;
    invoke-static {v0}, Lexam/dialog/SelectDialog3$1;->access$0(Lexam/dialog/SelectDialog3$1;)Lexam/dialog/SelectDialog3;

    move-result-object v0

    iget-object v0, v0, Lexam/dialog/SelectDialog3;->mSelect:[Z

    aput-boolean p3, v0, p2

    .line 26
    return-void
.end method
