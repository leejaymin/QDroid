.class Lcom/wareone/tappmt/General$6;
.super Ljava/lang/Object;
.source "General.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/General;->_setBudgetAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/General;

.field private final synthetic val$settings:Landroid/content/SharedPreferences;

.field private final synthetic val$trigger:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/General;Landroid/content/SharedPreferences;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/General$6;->this$0:Lcom/wareone/tappmt/General;

    iput-object p2, p0, Lcom/wareone/tappmt/General$6;->val$settings:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/wareone/tappmt/General$6;->val$trigger:[Ljava/lang/String;

    .line 712
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "pos"

    .prologue
    .line 717
    iget-object v1, p0, Lcom/wareone/tappmt/General$6;->val$settings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 718
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "budget_alert"

    iget-object v2, p0, Lcom/wareone/tappmt/General$6;->val$trigger:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 719
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 721
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 722
    return-void
.end method
