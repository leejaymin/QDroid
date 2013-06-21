.class Lcom/wareone/tappmt/Currency$3;
.super Ljava/lang/Object;
.source "Currency.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
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
    iput-object p1, p0, Lcom/wareone/tappmt/Currency$3;->this$0:Lcom/wareone/tappmt/Currency;

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/wareone/tappmt/Currency$3;)Lcom/wareone/tappmt/Currency;
    .locals 1
    .parameter

    .prologue
    .line 237
    iget-object v0, p0, Lcom/wareone/tappmt/Currency$3;->this$0:Lcom/wareone/tappmt/Currency;

    return-object v0
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    .line 244
    iget-object v1, p0, Lcom/wareone/tappmt/Currency$3;->this$0:Lcom/wareone/tappmt/Currency;

    #getter for: Lcom/wareone/tappmt/Currency;->m_values:Landroid/content/ContentValues;
    invoke-static {v1}, Lcom/wareone/tappmt/Currency;->access$3(Lcom/wareone/tappmt/Currency;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 245
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/wareone/tappmt/PmtDbAdapter$Currency;->FIELDS:[Ljava/lang/String;

    array-length v1, v1

    sub-int/2addr v1, v5

    if-lt v0, v1, :cond_0

    .line 249
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/wareone/tappmt/Currency$3;->this$0:Lcom/wareone/tappmt/Currency;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 250
    const v2, 0x7f090070

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 251
    const v2, 0x7f070009

    new-instance v3, Lcom/wareone/tappmt/Currency$3$1;

    invoke-direct {v3, p0}, Lcom/wareone/tappmt/Currency$3$1;-><init>(Lcom/wareone/tappmt/Currency$3;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 270
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 272
    return v5

    .line 246
    :cond_0
    iget-object v1, p0, Lcom/wareone/tappmt/Currency$3;->this$0:Lcom/wareone/tappmt/Currency;

    #getter for: Lcom/wareone/tappmt/Currency;->m_values:Landroid/content/ContentValues;
    invoke-static {v1}, Lcom/wareone/tappmt/Currency;->access$3(Lcom/wareone/tappmt/Currency;)Landroid/content/ContentValues;

    move-result-object v2

    sget-object v1, Lcom/wareone/tappmt/PmtDbAdapter$Currency;->FIELDS:[Ljava/lang/String;

    aget-object v3, v1, v0

    iget-object v1, p0, Lcom/wareone/tappmt/Currency$3;->this$0:Lcom/wareone/tappmt/Currency;

    #getter for: Lcom/wareone/tappmt/Currency;->m_data:Ljava/util/List;
    invoke-static {v1}, Lcom/wareone/tappmt/Currency;->access$2(Lcom/wareone/tappmt/Currency;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    sget-object v4, Lcom/wareone/tappmt/PmtDbAdapter$Currency;->FIELDS:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
