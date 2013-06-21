.class Lexam/dialog/ShowDialog$2;
.super Ljava/lang/Object;
.source "ShowDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/dialog/ShowDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/dialog/ShowDialog;


# direct methods
.method constructor <init>(Lexam/dialog/ShowDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/dialog/ShowDialog$2;->this$0:Lexam/dialog/ShowDialog;

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
    iget-object v0, p0, Lexam/dialog/ShowDialog$2;->this$0:Lexam/dialog/ShowDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lexam/dialog/ShowDialog;->showDialog(I)V

    .line 29
    return-void
.end method
