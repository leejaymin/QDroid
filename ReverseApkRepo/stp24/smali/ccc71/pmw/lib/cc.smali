.class final Lccc71/pmw/lib/cc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/bz;

.field private final synthetic b:Landroid/widget/TableLayout;

.field private final synthetic c:Ljava/util/ArrayList;

.field private final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/bz;Landroid/widget/TableLayout;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/cc;->a:Lccc71/pmw/lib/bz;

    iput-object p2, p0, Lccc71/pmw/lib/cc;->b:Landroid/widget/TableLayout;

    iput-object p3, p0, Lccc71/pmw/lib/cc;->c:Ljava/util/ArrayList;

    iput-object p4, p0, Lccc71/pmw/lib/cc;->d:Ljava/lang/String;

    .line 1241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 1246
    iget-object v0, p0, Lccc71/pmw/lib/cc;->a:Lccc71/pmw/lib/bz;

    invoke-static {v0}, Lccc71/pmw/lib/bz;->a(Lccc71/pmw/lib/bz;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->D(Lccc71/pmw/lib/pmw_applist;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1248
    iget-object v0, p0, Lccc71/pmw/lib/cc;->a:Lccc71/pmw/lib/bz;

    invoke-static {v0}, Lccc71/pmw/lib/bz;->a(Lccc71/pmw/lib/bz;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_applist;->a(Lccc71/pmw/lib/pmw_applist;Ljava/util/List;)V

    .line 1272
    :cond_0
    return-void

    .line 1252
    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/cc;->b:Landroid/widget/TableLayout;

    invoke-virtual {v0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lccc71/pmw/lib/cc;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lccc71/pmw/lib/cc;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v4, v0

    :goto_0
    move v5, v6

    .line 1253
    :goto_1
    if-ge v5, v4, :cond_0

    .line 1255
    iget-object v0, p0, Lccc71/pmw/lib/cc;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 1256
    aget-object v1, v0, v6

    check-cast v1, Landroid/widget/TextView;

    .line 1257
    aget-object v2, v0, v8

    check-cast v2, Landroid/widget/ImageView;

    .line 1258
    const/4 v3, 0x2

    aget-object v3, v0, v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    .line 1259
    const/4 v7, 0x3

    aget-object v0, v0, v7

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1261
    if-eqz v0, :cond_3

    .line 1263
    const/high16 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, p0, Lccc71/pmw/lib/cc;->d:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1265
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setId(I)V

    .line 1270
    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1253
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    .line 1252
    :cond_2
    iget-object v0, p0, Lccc71/pmw/lib/cc;->b:Landroid/widget/TableLayout;

    invoke-virtual {v0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v0

    move v4, v0

    goto :goto_0

    .line 1268
    :cond_3
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setId(I)V

    goto :goto_2
.end method
