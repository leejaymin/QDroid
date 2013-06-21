.class Lvn/esse/bodysymbol/HomeActivity$8;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvn/esse/bodysymbol/HomeActivity;->resetAllImage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvn/esse/bodysymbol/HomeActivity;

.field private final synthetic val$sbm:Ljava/lang/String;


# direct methods
.method constructor <init>(Lvn/esse/bodysymbol/HomeActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lvn/esse/bodysymbol/HomeActivity$8;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    iput-object p2, p0, Lvn/esse/bodysymbol/HomeActivity$8;->val$sbm:Ljava/lang/String;

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 413
    iget-object v0, p0, Lvn/esse/bodysymbol/HomeActivity$8;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    iget-object v1, p0, Lvn/esse/bodysymbol/HomeActivity$8;->val$sbm:Ljava/lang/String;

    #calls: Lvn/esse/bodysymbol/HomeActivity;->updateSymbolBitmap(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lvn/esse/bodysymbol/HomeActivity;->access$3(Lvn/esse/bodysymbol/HomeActivity;Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lvn/esse/bodysymbol/HomeActivity$8;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    iget-object v1, p0, Lvn/esse/bodysymbol/HomeActivity$8;->val$sbm:Ljava/lang/String;

    #calls: Lvn/esse/bodysymbol/HomeActivity;->onResetPerform(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lvn/esse/bodysymbol/HomeActivity;->access$4(Lvn/esse/bodysymbol/HomeActivity;Ljava/lang/String;)V

    .line 415
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 416
    return-void
.end method
