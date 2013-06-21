.class Lcom/wareone/tappmt/General$7;
.super Ljava/lang/Object;
.source "General.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/General;->_setBeforeDays()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/General;

.field private final synthetic val$settings:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/General;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/General$7;->this$0:Lcom/wareone/tappmt/General;

    iput-object p2, p0, Lcom/wareone/tappmt/General$7;->val$settings:Landroid/content/SharedPreferences;

    .line 733
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "pos"

    .prologue
    .line 738
    iget-object v1, p0, Lcom/wareone/tappmt/General$7;->val$settings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 739
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "before_days"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 740
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 742
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 743
    return-void
.end method
