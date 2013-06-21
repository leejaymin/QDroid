.class Lvn/esse/bodysymbol/HomeActivity$22;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvn/esse/bodysymbol/HomeActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvn/esse/bodysymbol/HomeActivity;

.field private final synthetic val$finish:Z


# direct methods
.method constructor <init>(Lvn/esse/bodysymbol/HomeActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lvn/esse/bodysymbol/HomeActivity$22;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    iput-boolean p2, p0, Lvn/esse/bodysymbol/HomeActivity$22;->val$finish:Z

    .line 1371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 1373
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1375
    iget-boolean v0, p0, Lvn/esse/bodysymbol/HomeActivity$22;->val$finish:Z

    if-eqz v0, :cond_0

    .line 1376
    iget-object v0, p0, Lvn/esse/bodysymbol/HomeActivity$22;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    invoke-virtual {v0}, Lvn/esse/bodysymbol/HomeActivity;->finish()V

    .line 1378
    :cond_0
    return-void
.end method
