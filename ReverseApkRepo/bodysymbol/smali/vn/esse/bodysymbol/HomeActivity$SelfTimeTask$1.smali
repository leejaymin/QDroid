.class Lvn/esse/bodysymbol/HomeActivity$SelfTimeTask$1;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvn/esse/bodysymbol/HomeActivity$SelfTimeTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lvn/esse/bodysymbol/HomeActivity$SelfTimeTask;


# direct methods
.method constructor <init>(Lvn/esse/bodysymbol/HomeActivity$SelfTimeTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lvn/esse/bodysymbol/HomeActivity$SelfTimeTask$1;->this$1:Lvn/esse/bodysymbol/HomeActivity$SelfTimeTask;

    .line 1402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1407
    iget-object v0, p0, Lvn/esse/bodysymbol/HomeActivity$SelfTimeTask$1;->this$1:Lvn/esse/bodysymbol/HomeActivity$SelfTimeTask;

    #getter for: Lvn/esse/bodysymbol/HomeActivity$SelfTimeTask;->this$0:Lvn/esse/bodysymbol/HomeActivity;
    invoke-static {v0}, Lvn/esse/bodysymbol/HomeActivity$SelfTimeTask;->access$1(Lvn/esse/bodysymbol/HomeActivity$SelfTimeTask;)Lvn/esse/bodysymbol/HomeActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lvn/esse/bodysymbol/HomeActivity;->onTakePhoto(Landroid/view/View;)V

    .line 1408
    return-void
.end method
