.class Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter;
.super Landroid/widget/BaseAdapter;
.source "Activity_Main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SizeListDialogAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/jellybus/fx/Activity_Main;


# direct methods
.method public constructor <init>(Lcom/jellybus/fx/Activity_Main;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 2255
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter;->this$0:Lcom/jellybus/fx/Activity_Main;

    .line 2252
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2254
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$0(Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter;)Lcom/jellybus/fx/Activity_Main;
    .locals 1
    .parameter

    .prologue
    .line 2248
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter;->this$0:Lcom/jellybus/fx/Activity_Main;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 2259
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->size:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Main;->access$46(Lcom/jellybus/fx/Activity_Main;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 2264
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 2269
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 2275
    if-nez p2, :cond_2

    .line 2276
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03001a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2277
    new-instance v1, Lcom/jellybus/fx/Activity_Main$ViewHolderMain;

    invoke-direct {v1}, Lcom/jellybus/fx/Activity_Main$ViewHolderMain;-><init>()V

    .line 2278
    .local v1, holder:Lcom/jellybus/fx/Activity_Main$ViewHolderMain;
    const v3, 0x7f060119

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/jellybus/fx/Activity_Main$ViewHolderMain;->dialog_text_title:Landroid/widget/TextView;

    .line 2279
    const v3, 0x7f06011a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/jellybus/fx/Activity_Main$ViewHolderMain;->dialog_text_size:Landroid/widget/TextView;

    .line 2280
    const v3, 0x7f06011b

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/jellybus/fx/Activity_Main$ViewHolderMain;->dialog_text_info:Landroid/widget/TextView;

    .line 2281
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2288
    :goto_0
    sget v3, Lcom/jellybus/fx_sub/PictureController;->degree:I

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_0

    sget v3, Lcom/jellybus/fx_sub/PictureController;->degree:I

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_3

    .line 2289
    :cond_0
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->size:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Main;->access$46(Lcom/jellybus/fx/Activity_Main;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    iget v2, v3, Landroid/graphics/Point;->y:I

    .line 2290
    .local v2, w:I
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->size:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Main;->access$46(Lcom/jellybus/fx/Activity_Main;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    iget v0, v3, Landroid/graphics/Point;->x:I

    .line 2296
    .local v0, h:I
    :goto_1
    if-nez p1, :cond_4

    .line 2297
    iget-object v3, v1, Lcom/jellybus/fx/Activity_Main$ViewHolderMain;->dialog_text_title:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter;->this$0:Lcom/jellybus/fx/Activity_Main;

    const v5, 0x7f050024

    invoke-virtual {v4, v5}, Lcom/jellybus/fx/Activity_Main;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2298
    iget-object v3, v1, Lcom/jellybus/fx/Activity_Main$ViewHolderMain;->dialog_text_size:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " x "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2299
    iget-object v3, v1, Lcom/jellybus/fx/Activity_Main$ViewHolderMain;->dialog_text_info:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter;->this$0:Lcom/jellybus/fx/Activity_Main;

    const v5, 0x7f050025

    invoke-virtual {v4, v5}, Lcom/jellybus/fx/Activity_Main;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2310
    :cond_1
    :goto_2
    new-instance v3, Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter$1;

    invoke-direct {v3, p0, p1}, Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter$1;-><init>(Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter;I)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2330
    return-object p2

    .line 2283
    .end local v0           #h:I
    .end local v1           #holder:Lcom/jellybus/fx/Activity_Main$ViewHolderMain;
    .end local v2           #w:I
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx/Activity_Main$ViewHolderMain;

    .restart local v1       #holder:Lcom/jellybus/fx/Activity_Main$ViewHolderMain;
    goto :goto_0

    .line 2292
    :cond_3
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->size:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Main;->access$46(Lcom/jellybus/fx/Activity_Main;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    iget v2, v3, Landroid/graphics/Point;->x:I

    .line 2293
    .restart local v2       #w:I
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->size:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Main;->access$46(Lcom/jellybus/fx/Activity_Main;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    iget v0, v3, Landroid/graphics/Point;->y:I

    .restart local v0       #h:I
    goto :goto_1

    .line 2300
    :cond_4
    const/4 v3, 0x1

    if-ne p1, v3, :cond_5

    .line 2301
    iget-object v3, v1, Lcom/jellybus/fx/Activity_Main$ViewHolderMain;->dialog_text_title:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "<font color=#00aaff>"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter;->this$0:Lcom/jellybus/fx/Activity_Main;

    const v6, 0x7f050026

    invoke-virtual {v5, v6}, Lcom/jellybus/fx/Activity_Main;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</font>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2302
    iget-object v3, v1, Lcom/jellybus/fx/Activity_Main$ViewHolderMain;->dialog_text_size:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "<font color=#00aaff>"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " x "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</font>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2303
    iget-object v3, v1, Lcom/jellybus/fx/Activity_Main$ViewHolderMain;->dialog_text_info:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter;->this$0:Lcom/jellybus/fx/Activity_Main;

    const v5, 0x7f050027

    invoke-virtual {v4, v5}, Lcom/jellybus/fx/Activity_Main;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 2304
    :cond_5
    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 2305
    iget-object v3, v1, Lcom/jellybus/fx/Activity_Main$ViewHolderMain;->dialog_text_title:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "<font color=#ff4433>"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter;->this$0:Lcom/jellybus/fx/Activity_Main;

    const v6, 0x7f050028

    invoke-virtual {v5, v6}, Lcom/jellybus/fx/Activity_Main;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</font>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2306
    iget-object v3, v1, Lcom/jellybus/fx/Activity_Main$ViewHolderMain;->dialog_text_size:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "<font color=#ff4433>"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " x "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</font>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2307
    iget-object v3, v1, Lcom/jellybus/fx/Activity_Main$ViewHolderMain;->dialog_text_info:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter;->this$0:Lcom/jellybus/fx/Activity_Main;

    const v5, 0x7f050029

    invoke-virtual {v4, v5}, Lcom/jellybus/fx/Activity_Main;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method
