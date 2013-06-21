.class Lcom/falmarri/futures/Futures$QuoteAdapter;
.super Landroid/widget/ArrayAdapter;
.source "Futures.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/falmarri/futures/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuoteAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/falmarri/futures/Quote;",
        ">;",
        "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;"
    }
.end annotation


# instance fields
.field items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/falmarri/futures/Quote;",
            ">;"
        }
    .end annotation
.end field

.field resource:I

.field final synthetic this$0:Lcom/falmarri/futures/Futures;


# direct methods
.method public constructor <init>(Lcom/falmarri/futures/Futures;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/falmarri/futures/Quote;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 293
    .local p4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/falmarri/futures/Quote;>;"
    iput-object p1, p0, Lcom/falmarri/futures/Futures$QuoteAdapter;->this$0:Lcom/falmarri/futures/Futures;

    .line 294
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 296
    iput-object p4, p0, Lcom/falmarri/futures/Futures$QuoteAdapter;->items:Ljava/util/ArrayList;

    .line 297
    iput p3, p0, Lcom/falmarri/futures/Futures$QuoteAdapter;->resource:I

    .line 299
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 315
    move-object/from16 v9, p2

    .line 319
    .local v9, v:Landroid/view/View;
    rem-int/lit8 v12, p1, 0x2

    if-nez v12, :cond_0

    const/4 v1, -0x1

    .line 321
    .local v1, bg:I
    :goto_0
    iget-object v12, p0, Lcom/falmarri/futures/Futures$QuoteAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v12, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/falmarri/futures/Quote;

    .line 323
    .local v6, q:Lcom/falmarri/futures/Quote;
    iget-boolean v12, v6, Lcom/falmarri/futures/Quote;->blank:Z

    if-nez v12, :cond_3

    .line 324
    invoke-virtual {v6}, Lcom/falmarri/futures/Quote;->getChange()Ljava/lang/String;

    move-result-object v12

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v7, 0x0

    .line 325
    .local v7, up:Z
    :goto_1
    if-eqz v7, :cond_2

    const v3, -0xcd7600

    .line 327
    .local v3, color:I
    :goto_2
    invoke-virtual {p0}, Lcom/falmarri/futures/Futures$QuoteAdapter;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 328
    const-string v13, "layout_inflater"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 327
    check-cast v11, Landroid/view/LayoutInflater;

    .line 330
    .local v11, vi:Landroid/view/LayoutInflater;
    iget v12, p0, Lcom/falmarri/futures/Futures$QuoteAdapter;->resource:I

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 333
    const v12, 0x7f080001

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 332
    check-cast v0, Landroid/widget/LinearLayout;

    .line 334
    .local v0, back:Landroid/widget/LinearLayout;
    const v12, 0x7f080002

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 335
    .local v5, index:Landroid/widget/TextView;
    const v12, 0x7f080003

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 336
    .local v10, value:Landroid/widget/TextView;
    const v12, 0x7f080004

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 337
    .local v2, change:Landroid/widget/TextView;
    const v12, 0x7f080005

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 339
    .local v8, updated:Landroid/widget/TextView;
    invoke-virtual {v6}, Lcom/falmarri/futures/Quote;->getIndex()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 342
    invoke-virtual {v6}, Lcom/falmarri/futures/Quote;->getVal()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    invoke-virtual {v6}, Lcom/falmarri/futures/Quote;->getChange()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    invoke-virtual {v6}, Lcom/falmarri/futures/Quote;->getTime()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 346
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 361
    .end local v0           #back:Landroid/widget/LinearLayout;
    .end local v2           #change:Landroid/widget/TextView;
    .end local v3           #color:I
    .end local v5           #index:Landroid/widget/TextView;
    .end local v7           #up:Z
    .end local v8           #updated:Landroid/widget/TextView;
    .end local v10           #value:Landroid/widget/TextView;
    :goto_3
    return-object v9

    .line 319
    .end local v1           #bg:I
    .end local v6           #q:Lcom/falmarri/futures/Quote;
    .end local v11           #vi:Landroid/view/LayoutInflater;
    :cond_0
    const v1, -0x232324

    goto/16 :goto_0

    .line 324
    .restart local v1       #bg:I
    .restart local v6       #q:Lcom/falmarri/futures/Quote;
    :cond_1
    const/4 v7, 0x1

    goto :goto_1

    .line 325
    .restart local v7       #up:Z
    :cond_2
    const/high16 v3, -0xf

    goto :goto_2

    .line 350
    .end local v7           #up:Z
    :cond_3
    invoke-virtual {p0}, Lcom/falmarri/futures/Futures$QuoteAdapter;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 351
    const-string v13, "layout_inflater"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 350
    check-cast v11, Landroid/view/LayoutInflater;

    .line 352
    .restart local v11       #vi:Landroid/view/LayoutInflater;
    const/high16 v12, 0x7f03

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 354
    const/high16 v12, 0x7f08

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 355
    .local v4, h:Landroid/widget/TextView;
    invoke-virtual {v6}, Lcom/falmarri/futures/Quote;->getRegion()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Landroid/view/View;->setClickable(Z)V

    goto :goto_3
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/falmarri/futures/Futures$QuoteAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/falmarri/futures/Quote;

    iget-boolean v0, v0, Lcom/falmarri/futures/Quote;->blank:Z

    if-eqz v0, :cond_0

    .line 305
    const/4 v0, 0x0

    .line 308
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 370
    return-void
.end method
