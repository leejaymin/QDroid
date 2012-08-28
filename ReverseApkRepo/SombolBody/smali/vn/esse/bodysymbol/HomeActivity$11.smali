.class Lvn/esse/bodysymbol/HomeActivity$11;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvn/esse/bodysymbol/HomeActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvn/esse/bodysymbol/HomeActivity;


# direct methods
.method constructor <init>(Lvn/esse/bodysymbol/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lvn/esse/bodysymbol/HomeActivity$11;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    .line 700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 705
    iget-object v0, p0, Lvn/esse/bodysymbol/HomeActivity$11;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lvn/esse/bodysymbol/HomeActivity;->showDialog(I)V

    .line 706
    iget-object v0, p0, Lvn/esse/bodysymbol/HomeActivity$11;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lvn/esse/bodysymbol/HomeActivity;->dismissDialog(I)V

    .line 708
    return-void
.end method
