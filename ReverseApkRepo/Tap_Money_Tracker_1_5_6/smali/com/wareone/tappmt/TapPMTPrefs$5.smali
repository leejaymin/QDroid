.class Lcom/wareone/tappmt/TapPMTPrefs$5;
.super Ljava/lang/Object;
.source "TapPMTPrefs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/TapPMTPrefs;->_setAccount(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/TapPMTPrefs;

.field private final synthetic val$m_data:Ljava/util/ArrayList;

.field private final synthetic val$pref_key:Ljava/lang/String;

.field private final synthetic val$settings:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/TapPMTPrefs;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/TapPMTPrefs$5;->this$0:Lcom/wareone/tappmt/TapPMTPrefs;

    iput-object p2, p0, Lcom/wareone/tappmt/TapPMTPrefs$5;->val$settings:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/wareone/tappmt/TapPMTPrefs$5;->val$pref_key:Ljava/lang/String;

    iput-object p4, p0, Lcom/wareone/tappmt/TapPMTPrefs$5;->val$m_data:Ljava/util/ArrayList;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "pos"

    .prologue
    .line 153
    iget-object v2, p0, Lcom/wareone/tappmt/TapPMTPrefs$5;->val$settings:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 154
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Lcom/wareone/tappmt/TapPMTPrefs$5;->val$pref_key:Ljava/lang/String;

    iget-object v2, p0, Lcom/wareone/tappmt/TapPMTPrefs$5;->this$0:Lcom/wareone/tappmt/TapPMTPrefs;

    iget-object v4, p0, Lcom/wareone/tappmt/TapPMTPrefs$5;->val$m_data:Ljava/util/ArrayList;

    const-string v5, "_id"

    #calls: Lcom/wareone/tappmt/TapPMTPrefs;->_getList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    invoke-static {v2, v4, v5}, Lcom/wareone/tappmt/TapPMTPrefs;->access$3(Lcom/wareone/tappmt/TapPMTPrefs;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 155
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 157
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 159
    new-instance v1, Lcom/wareone/tappmt/PmtDbAdapter;

    iget-object v2, p0, Lcom/wareone/tappmt/TapPMTPrefs$5;->this$0:Lcom/wareone/tappmt/TapPMTPrefs;

    invoke-direct {v1, v2}, Lcom/wareone/tappmt/PmtDbAdapter;-><init>(Landroid/content/Context;)V

    .line 160
    .local v1, m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;
    invoke-virtual {v1}, Lcom/wareone/tappmt/PmtDbAdapter;->open()Lcom/wareone/tappmt/PmtDbAdapter;

    .line 161
    iget-object v2, p0, Lcom/wareone/tappmt/TapPMTPrefs$5;->this$0:Lcom/wareone/tappmt/TapPMTPrefs;

    invoke-virtual {v1, v2}, Lcom/wareone/tappmt/PmtDbAdapter;->updateWidget(Landroid/content/Context;)V

    .line 162
    invoke-virtual {v1}, Lcom/wareone/tappmt/PmtDbAdapter;->close()V

    .line 163
    return-void
.end method
