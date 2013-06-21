.class Lcom/wareone/tappmt/Currency$2;
.super Ljava/lang/Object;
.source "Currency.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/Currency;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/Currency;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/Currency;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/Currency$2;->this$0:Lcom/wareone/tappmt/Currency;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/wareone/tappmt/Currency$2;)Lcom/wareone/tappmt/Currency;
    .locals 1
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lcom/wareone/tappmt/Currency$2;->this$0:Lcom/wareone/tappmt/Currency;

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v7, 0x1

    .line 191
    new-instance v2, Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 192
    .local v2, input:Landroid/widget/EditText;
    iget-object v3, p0, Lcom/wareone/tappmt/Currency$2;->this$0:Lcom/wareone/tappmt/Currency;

    #getter for: Lcom/wareone/tappmt/Currency;->m_data:Ljava/util/List;
    invoke-static {v3}, Lcom/wareone/tappmt/Currency;->access$2(Lcom/wareone/tappmt/Currency;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v4, "rate"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 193
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    invoke-virtual {v2}, Landroid/widget/EditText;->setSingleLine()V

    .line 195
    const/16 v3, 0x2002

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 197
    iget-object v3, p0, Lcom/wareone/tappmt/Currency$2;->this$0:Lcom/wareone/tappmt/Currency;

    #getter for: Lcom/wareone/tappmt/Currency;->m_values:Landroid/content/ContentValues;
    invoke-static {v3}, Lcom/wareone/tappmt/Currency;->access$3(Lcom/wareone/tappmt/Currency;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 198
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v3, Lcom/wareone/tappmt/PmtDbAdapter$Currency;->FIELDS:[Ljava/lang/String;

    array-length v3, v3

    sub-int/2addr v3, v7

    if-lt v1, v3, :cond_0

    .line 202
    iget-object v3, p0, Lcom/wareone/tappmt/Currency$2;->this$0:Lcom/wareone/tappmt/Currency;

    invoke-virtual {v3}, Lcom/wareone/tappmt/Currency;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090067

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, _title:Ljava/lang/String;
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/wareone/tappmt/Currency$2;->this$0:Lcom/wareone/tappmt/Currency;

    #getter for: Lcom/wareone/tappmt/Currency;->m_data:Ljava/util/List;
    invoke-static {v3}, Lcom/wareone/tappmt/Currency;->access$2(Lcom/wareone/tappmt/Currency;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v6, "currency_name"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v4, v5

    iget-object v3, p0, Lcom/wareone/tappmt/Currency$2;->this$0:Lcom/wareone/tappmt/Currency;

    #getter for: Lcom/wareone/tappmt/Currency;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;
    invoke-static {v3}, Lcom/wareone/tappmt/Currency;->access$4(Lcom/wareone/tappmt/Currency;)Lcom/wareone/tappmt/PmtDbAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wareone/tappmt/PmtDbAdapter;->getDefaultCurrency()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v7

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 205
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/wareone/tappmt/Currency$2;->this$0:Lcom/wareone/tappmt/Currency;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 206
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 207
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 208
    const v4, 0x7f09004d

    new-instance v5, Lcom/wareone/tappmt/Currency$2$1;

    invoke-direct {v5, p0, v2}, Lcom/wareone/tappmt/Currency$2$1;-><init>(Lcom/wareone/tappmt/Currency$2;Landroid/widget/EditText;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 226
    const v4, 0x7f09004b

    new-instance v5, Lcom/wareone/tappmt/Currency$2$2;

    invoke-direct {v5, p0}, Lcom/wareone/tappmt/Currency$2$2;-><init>(Lcom/wareone/tappmt/Currency$2;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 233
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 234
    return-void

    .line 199
    .end local v0           #_title:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/wareone/tappmt/Currency$2;->this$0:Lcom/wareone/tappmt/Currency;

    #getter for: Lcom/wareone/tappmt/Currency;->m_values:Landroid/content/ContentValues;
    invoke-static {v3}, Lcom/wareone/tappmt/Currency;->access$3(Lcom/wareone/tappmt/Currency;)Landroid/content/ContentValues;

    move-result-object v4

    sget-object v3, Lcom/wareone/tappmt/PmtDbAdapter$Currency;->FIELDS:[Ljava/lang/String;

    aget-object v5, v3, v1

    iget-object v3, p0, Lcom/wareone/tappmt/Currency$2;->this$0:Lcom/wareone/tappmt/Currency;

    #getter for: Lcom/wareone/tappmt/Currency;->m_data:Ljava/util/List;
    invoke-static {v3}, Lcom/wareone/tappmt/Currency;->access$2(Lcom/wareone/tappmt/Currency;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    sget-object v6, Lcom/wareone/tappmt/PmtDbAdapter$Currency;->FIELDS:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method
