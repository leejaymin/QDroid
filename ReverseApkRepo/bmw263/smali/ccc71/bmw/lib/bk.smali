.class final Lccc71/bmw/lib/bk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/bmw_icon_package_list;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/bmw_icon_package_list;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/bk;->a:Lccc71/bmw/lib/bmw_icon_package_list;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x2

    .line 201
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 202
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 204
    iget-object v0, p0, Lccc71/bmw/lib/bk;->a:Lccc71/bmw/lib/bmw_icon_package_list;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_icon_package_list;->b(Lccc71/bmw/lib/bmw_icon_package_list;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 205
    iget-object v2, p0, Lccc71/bmw/lib/bk;->a:Lccc71/bmw/lib/bmw_icon_package_list;

    invoke-static {v2}, Lccc71/bmw/lib/bmw_icon_package_list;->c(Lccc71/bmw/lib/bmw_icon_package_list;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    :goto_0
    return-void

    .line 208
    :cond_0
    new-instance v2, Landroid/widget/TableRow;

    iget-object v3, p0, Lccc71/bmw/lib/bk;->a:Lccc71/bmw/lib/bmw_icon_package_list;

    invoke-direct {v2, v3}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 210
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lccc71/bmw/lib/bk;->a:Lccc71/bmw/lib/bmw_icon_package_list;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 211
    iget-object v4, p0, Lccc71/bmw/lib/bk;->a:Lccc71/bmw/lib/bmw_icon_package_list;

    invoke-static {v4}, Lccc71/bmw/lib/bmw_icon_package_list;->d(Lccc71/bmw/lib/bmw_icon_package_list;)[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 212
    invoke-virtual {v2, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 214
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lccc71/bmw/lib/bk;->a:Lccc71/bmw/lib/bmw_icon_package_list;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 215
    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 216
    const/high16 v4, 0x4190

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 217
    iget-object v4, p0, Lccc71/bmw/lib/bk;->a:Lccc71/bmw/lib/bmw_icon_package_list;

    invoke-static {v4}, Lccc71/bmw/lib/bmw_icon_package_list;->e(Lccc71/bmw/lib/bmw_icon_package_list;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 219
    invoke-virtual {v2, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 221
    invoke-virtual {v2, v1}, Landroid/widget/TableRow;->setId(I)V

    .line 222
    iget-object v1, p0, Lccc71/bmw/lib/bk;->a:Lccc71/bmw/lib/bmw_icon_package_list;

    invoke-static {v1}, Lccc71/bmw/lib/bmw_icon_package_list;->f(Lccc71/bmw/lib/bmw_icon_package_list;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TableRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v1, p0, Lccc71/bmw/lib/bk;->a:Lccc71/bmw/lib/bmw_icon_package_list;

    invoke-static {v1}, Lccc71/bmw/lib/bmw_icon_package_list;->g(Lccc71/bmw/lib/bmw_icon_package_list;)Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TableRow;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 225
    iget-object v1, p0, Lccc71/bmw/lib/bk;->a:Lccc71/bmw/lib/bmw_icon_package_list;

    invoke-static {v1}, Lccc71/bmw/lib/bmw_icon_package_list;->h(Lccc71/bmw/lib/bmw_icon_package_list;)Landroid/widget/TableLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 227
    iget-object v1, p0, Lccc71/bmw/lib/bk;->a:Lccc71/bmw/lib/bmw_icon_package_list;

    invoke-static {v1}, Lccc71/bmw/lib/bmw_icon_package_list;->c(Lccc71/bmw/lib/bmw_icon_package_list;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lccc71/bmw/lib/bmw_icon_package_list;->a(Lccc71/bmw/lib/bmw_icon_package_list;Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lccc71/bmw/lib/bk;->a:Lccc71/bmw/lib/bmw_icon_package_list;

    iget-object v2, p0, Lccc71/bmw/lib/bk;->a:Lccc71/bmw/lib/bmw_icon_package_list;

    invoke-static {v2}, Lccc71/bmw/lib/bmw_icon_package_list;->c(Lccc71/bmw/lib/bmw_icon_package_list;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "  "

    const-string v4, " "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lccc71/bmw/lib/bmw_icon_package_list;->a(Lccc71/bmw/lib/bmw_icon_package_list;Ljava/lang/String;)V

    .line 230
    const-string v1, "battery_widget_monitor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Added package:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lccc71/bmw/lib/bk;->a:Lccc71/bmw/lib/bmw_icon_package_list;

    invoke-static {v2}, Lccc71/bmw/lib/bmw_icon_package_list;->c(Lccc71/bmw/lib/bmw_icon_package_list;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lccc71/bmw/lib/bk;->a:Lccc71/bmw/lib/bmw_icon_package_list;

    iget-object v1, p0, Lccc71/bmw/lib/bk;->a:Lccc71/bmw/lib/bmw_icon_package_list;

    invoke-static {v1}, Lccc71/bmw/lib/bmw_icon_package_list;->c(Lccc71/bmw/lib/bmw_icon_package_list;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccc71/bmw/lib/bmw_settings;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
