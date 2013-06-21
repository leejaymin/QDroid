.class final Lccc71/pmw/lib/cb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/bz;

.field private final synthetic b:Landroid/widget/TableLayout;

.field private final synthetic c:Ljava/util/ArrayList;

.field private final synthetic d:F

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Ljava/lang/String;

.field private final synthetic g:I


# direct methods
.method constructor <init>(Lccc71/pmw/lib/bz;Landroid/widget/TableLayout;Ljava/util/ArrayList;FLjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/cb;->a:Lccc71/pmw/lib/bz;

    iput-object p2, p0, Lccc71/pmw/lib/cb;->b:Landroid/widget/TableLayout;

    iput-object p3, p0, Lccc71/pmw/lib/cb;->c:Ljava/util/ArrayList;

    iput p4, p0, Lccc71/pmw/lib/cb;->d:F

    iput-object p5, p0, Lccc71/pmw/lib/cb;->e:Ljava/lang/String;

    iput-object p6, p0, Lccc71/pmw/lib/cb;->f:Ljava/lang/String;

    iput p7, p0, Lccc71/pmw/lib/cb;->g:I

    .line 1153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v6, 0x0

    const/4 v10, 0x2

    .line 1158
    iget-object v0, p0, Lccc71/pmw/lib/cb;->a:Lccc71/pmw/lib/bz;

    invoke-static {v0}, Lccc71/pmw/lib/bz;->a(Lccc71/pmw/lib/bz;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->D(Lccc71/pmw/lib/pmw_applist;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1160
    iget-object v0, p0, Lccc71/pmw/lib/cb;->a:Lccc71/pmw/lib/bz;

    invoke-static {v0}, Lccc71/pmw/lib/bz;->a(Lccc71/pmw/lib/bz;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_applist;->a(Lccc71/pmw/lib/pmw_applist;Ljava/util/List;)V

    .line 1203
    :cond_0
    return-void

    .line 1164
    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/cb;->b:Landroid/widget/TableLayout;

    invoke-virtual {v0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lccc71/pmw/lib/cb;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_4

    iget-object v0, p0, Lccc71/pmw/lib/cb;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v4, v0

    :goto_0
    move v5, v6

    .line 1165
    :goto_1
    if-ge v5, v4, :cond_0

    .line 1167
    iget-object v0, p0, Lccc71/pmw/lib/cb;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 1168
    aget-object v1, v0, v6

    check-cast v1, Ljava/lang/String;

    .line 1169
    aget-object v2, v0, v11

    check-cast v2, Ljava/lang/String;

    .line 1170
    aget-object v3, v0, v10

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1171
    const/4 v7, 0x3

    aget-object v0, v0, v7

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1173
    new-instance v7, Landroid/widget/TextView;

    iget-object v8, p0, Lccc71/pmw/lib/cb;->a:Lccc71/pmw/lib/bz;

    invoke-static {v8}, Lccc71/pmw/lib/bz;->a(Lccc71/pmw/lib/bz;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1174
    invoke-virtual {v7, v10, v10, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1175
    iget v8, p0, Lccc71/pmw/lib/cb;->d:F

    const/high16 v9, 0x4000

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1176
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 1177
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lccc71/pmw/lib/cb;->e:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " - "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v8, p0, Lccc71/pmw/lib/cb;->f:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1178
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setId(I)V

    .line 1179
    add-int/lit8 v1, v0, -0x1

    div-int/lit8 v1, v1, 0x2

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    .line 1181
    iget v1, p0, Lccc71/pmw/lib/cb;->g:I

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1183
    :cond_2
    if-nez v3, :cond_5

    .line 1185
    const v1, -0xff0100

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1198
    :goto_2
    iget-object v1, p0, Lccc71/pmw/lib/cb;->a:Lccc71/pmw/lib/bz;

    invoke-static {v1}, Lccc71/pmw/lib/bz;->a(Lccc71/pmw/lib/bz;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v1

    invoke-static {v1}, Lccc71/pmw/lib/pmw_applist;->E(Lccc71/pmw/lib/pmw_applist;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1200
    iget-object v1, p0, Lccc71/pmw/lib/cb;->b:Landroid/widget/TableLayout;

    invoke-virtual {v1}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v1

    if-gt v0, v1, :cond_3

    .line 1201
    iget-object v1, p0, Lccc71/pmw/lib/cb;->b:Landroid/widget/TableLayout;

    invoke-virtual {v1, v7, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;I)V

    .line 1165
    :cond_3
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_1

    .line 1164
    :cond_4
    iget-object v0, p0, Lccc71/pmw/lib/cb;->b:Landroid/widget/TableLayout;

    invoke-virtual {v0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v0

    move v4, v0

    goto/16 :goto_0

    .line 1189
    :cond_5
    if-gez v3, :cond_6

    .line 1191
    const/16 v1, -0x100

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 1195
    :cond_6
    const/high16 v1, -0x1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2
.end method
