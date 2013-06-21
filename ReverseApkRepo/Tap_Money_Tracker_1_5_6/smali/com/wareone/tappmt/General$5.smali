.class Lcom/wareone/tappmt/General$5;
.super Ljava/lang/Object;
.source "General.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/General;->_setShowMeAccount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/General;

.field private final synthetic val$m_data:Ljava/util/ArrayList;

.field private final synthetic val$settings:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/General;Landroid/content/SharedPreferences;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/General$5;->this$0:Lcom/wareone/tappmt/General;

    iput-object p2, p0, Lcom/wareone/tappmt/General$5;->val$settings:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/wareone/tappmt/General$5;->val$m_data:Ljava/util/ArrayList;

    .line 609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "pos"

    .prologue
    .line 614
    iget-object v1, p0, Lcom/wareone/tappmt/General$5;->val$settings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 615
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "show_account"

    iget-object v2, p0, Lcom/wareone/tappmt/General$5;->this$0:Lcom/wareone/tappmt/General;

    iget-object v3, p0, Lcom/wareone/tappmt/General$5;->val$m_data:Ljava/util/ArrayList;

    const-string v4, "_id"

    #calls: Lcom/wareone/tappmt/General;->_getList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    invoke-static {v2, v3, v4}, Lcom/wareone/tappmt/General;->access$3(Lcom/wareone/tappmt/General;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 616
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 618
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 619
    return-void
.end method
