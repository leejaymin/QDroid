.class Lcom/wareone/tappmt/TemplateEditor$2;
.super Ljava/lang/Object;
.source "TemplateEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/TemplateEditor;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/TemplateEditor;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/TemplateEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/TemplateEditor$2;->this$0:Lcom/wareone/tappmt/TemplateEditor;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/wareone/tappmt/TemplateEditor$2;)Lcom/wareone/tappmt/TemplateEditor;
    .locals 1
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/wareone/tappmt/TemplateEditor$2;->this$0:Lcom/wareone/tappmt/TemplateEditor;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter "v"

    .prologue
    const-string v12, "sub_of"

    const-string v9, "category"

    const-string v11, "_id"

    .line 135
    const/4 v3, 0x0

    .line 136
    .local v3, idx_group:I
    const/4 v5, 0x0

    .line 137
    .local v5, idx_child:I
    iget-object v1, p0, Lcom/wareone/tappmt/TemplateEditor$2;->this$0:Lcom/wareone/tappmt/TemplateEditor;

    #getter for: Lcom/wareone/tappmt/TemplateEditor;->m_values:Landroid/content/ContentValues;
    invoke-static {v1}, Lcom/wareone/tappmt/TemplateEditor;->access$1(Lcom/wareone/tappmt/TemplateEditor;)Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "category"

    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 138
    .local v7, cate_id:Ljava/lang/String;
    iget-object v1, p0, Lcom/wareone/tappmt/TemplateEditor$2;->this$0:Lcom/wareone/tappmt/TemplateEditor;

    #getter for: Lcom/wareone/tappmt/TemplateEditor;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;
    invoke-static {v1}, Lcom/wareone/tappmt/TemplateEditor;->access$4(Lcom/wareone/tappmt/TemplateEditor;)Lcom/wareone/tappmt/PmtDbAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/wareone/tappmt/TemplateEditor$2;->this$0:Lcom/wareone/tappmt/TemplateEditor;

    #getter for: Lcom/wareone/tappmt/TemplateEditor;->m_values:Landroid/content/ContentValues;
    invoke-static {v2}, Lcom/wareone/tappmt/TemplateEditor;->access$1(Lcom/wareone/tappmt/TemplateEditor;)Landroid/content/ContentValues;

    move-result-object v2

    const-string v4, "category"

    invoke-virtual {v2, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wareone/tappmt/PmtDbAdapter;->getAccountById(Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object v6

    .line 139
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    const-string v1, "sub_of"

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-nez v1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/wareone/tappmt/TemplateEditor$2;->this$0:Lcom/wareone/tappmt/TemplateEditor;

    invoke-static {}, Lcom/wareone/tappmt/TemplateEditor;->access$3()Ljava/util/List;

    move-result-object v2

    const-string v4, "_id"

    #calls: Lcom/wareone/tappmt/TemplateEditor;->_getList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    invoke-static {v1, v2, v11}, Lcom/wareone/tappmt/TemplateEditor;->access$5(Lcom/wareone/tappmt/TemplateEditor;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 142
    .local v8, ls_category:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "_id"

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 153
    .end local v8           #ls_category:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 155
    new-instance v0, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;

    iget-object v1, p0, Lcom/wareone/tappmt/TemplateEditor$2;->this$0:Lcom/wareone/tappmt/TemplateEditor;

    invoke-static {}, Lcom/wareone/tappmt/TemplateEditor;->access$3()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lcom/wareone/tappmt/TemplateEditor;->access$6()Ljava/util/List;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/util/List;I)V

    .line 156
    .local v0, dialog:Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;
    new-instance v1, Lcom/wareone/tappmt/TemplateEditor$2$1;

    invoke-direct {v1, p0}, Lcom/wareone/tappmt/TemplateEditor$2$1;-><init>(Lcom/wareone/tappmt/TemplateEditor$2;)V

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->setOnItemClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 172
    invoke-virtual {v0}, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->show()V

    .line 173
    return-void

    .line 146
    .end local v0           #dialog:Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;
    :cond_1
    iget-object v1, p0, Lcom/wareone/tappmt/TemplateEditor$2;->this$0:Lcom/wareone/tappmt/TemplateEditor;

    invoke-static {}, Lcom/wareone/tappmt/TemplateEditor;->access$3()Ljava/util/List;

    move-result-object v2

    const-string v4, "_id"

    #calls: Lcom/wareone/tappmt/TemplateEditor;->_getList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    invoke-static {v1, v2, v11}, Lcom/wareone/tappmt/TemplateEditor;->access$5(Lcom/wareone/tappmt/TemplateEditor;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 147
    .restart local v8       #ls_category:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "sub_of"

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 149
    iget-object v2, p0, Lcom/wareone/tappmt/TemplateEditor$2;->this$0:Lcom/wareone/tappmt/TemplateEditor;

    invoke-static {}, Lcom/wareone/tappmt/TemplateEditor;->access$6()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const-string v4, "_id"

    #calls: Lcom/wareone/tappmt/TemplateEditor;->_getList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    invoke-static {v2, v1, v11}, Lcom/wareone/tappmt/TemplateEditor;->access$5(Lcom/wareone/tappmt/TemplateEditor;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 150
    const-string v1, "_id"

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    goto :goto_0
.end method
