.class Lvn/esse/bodysymbol/HomeActivity$10;
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

.field private final synthetic val$sbm:Ljava/lang/String;


# direct methods
.method constructor <init>(Lvn/esse/bodysymbol/HomeActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lvn/esse/bodysymbol/HomeActivity$10;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    iput-object p2, p0, Lvn/esse/bodysymbol/HomeActivity$10;->val$sbm:Ljava/lang/String;

    .line 648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 653
    iget-object v1, p0, Lvn/esse/bodysymbol/HomeActivity$10;->val$sbm:Ljava/lang/String;

    sget-object v2, Lvn/esse/bodysymbol/HomeActivity;->BODY_SYMBOL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 665
    :goto_0
    return-void

    .line 656
    :cond_0
    iget-object v1, p0, Lvn/esse/bodysymbol/HomeActivity$10;->val$sbm:Ljava/lang/String;

    sput-object v1, Lvn/esse/bodysymbol/HomeActivity;->BODY_SYMBOL:Ljava/lang/String;

    .line 657
    iget-object v1, p0, Lvn/esse/bodysymbol/HomeActivity$10;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    iget-object v1, v1, Lvn/esse/bodysymbol/HomeActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 658
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "BODY_SYMBOL"

    sget-object v2, Lvn/esse/bodysymbol/HomeActivity;->BODY_SYMBOL:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 659
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 661
    iget-object v1, p0, Lvn/esse/bodysymbol/HomeActivity$10;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    iget-object v2, p0, Lvn/esse/bodysymbol/HomeActivity$10;->val$sbm:Ljava/lang/String;

    #calls: Lvn/esse/bodysymbol/HomeActivity;->updateSymbolBitmap(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lvn/esse/bodysymbol/HomeActivity;->access$3(Lvn/esse/bodysymbol/HomeActivity;Ljava/lang/String;)V

    .line 662
    iget-object v1, p0, Lvn/esse/bodysymbol/HomeActivity$10;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    iget-object v2, p0, Lvn/esse/bodysymbol/HomeActivity$10;->val$sbm:Ljava/lang/String;

    #calls: Lvn/esse/bodysymbol/HomeActivity;->onResetPerform(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lvn/esse/bodysymbol/HomeActivity;->access$4(Lvn/esse/bodysymbol/HomeActivity;Ljava/lang/String;)V

    .line 663
    iget-object v1, p0, Lvn/esse/bodysymbol/HomeActivity$10;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lvn/esse/bodysymbol/HomeActivity;->dismissDialog(I)V

    goto :goto_0
.end method
