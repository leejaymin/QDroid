.class final Lccc71/pmw/lib/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/p;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/p;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/q;->a:Lccc71/pmw/lib/p;

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/16 v9, 0x3d

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 242
    iget-object v0, p0, Lccc71/pmw/lib/q;->a:Lccc71/pmw/lib/p;

    invoke-static {v0}, Lccc71/pmw/lib/p;->a(Lccc71/pmw/lib/p;)Lccc71/pmw/lib/at_build;

    move-result-object v0

    invoke-static {v0}, Lccc71/utils/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lccc71/pmw/lib/q;->a:Lccc71/pmw/lib/p;

    invoke-static {v0}, Lccc71/pmw/lib/p;->a(Lccc71/pmw/lib/p;)Lccc71/pmw/lib/at_build;

    move-result-object v0

    iget-object v2, p0, Lccc71/pmw/lib/q;->a:Lccc71/pmw/lib/p;

    invoke-static {v2}, Lccc71/pmw/lib/p;->a(Lccc71/pmw/lib/p;)Lccc71/pmw/lib/at_build;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->cM:I

    invoke-virtual {v2, v3}, Lccc71/pmw/lib/at_build;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 288
    :goto_0
    return-void

    .line 250
    :cond_0
    if-nez p2, :cond_5

    move v0, v1

    .line 252
    :goto_1
    iget-object v2, p0, Lccc71/pmw/lib/q;->a:Lccc71/pmw/lib/p;

    invoke-static {v2}, Lccc71/pmw/lib/p;->a(Lccc71/pmw/lib/p;)Lccc71/pmw/lib/at_build;

    move-result-object v2

    invoke-static {v2}, Lccc71/pmw/lib/at_build;->b(Lccc71/pmw/lib/at_build;)[I

    move-result-object v2

    array-length v2, v2

    if-lt v0, v2, :cond_2

    .line 287
    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/q;->a:Lccc71/pmw/lib/p;

    invoke-static {v0}, Lccc71/pmw/lib/p;->a(Lccc71/pmw/lib/p;)Lccc71/pmw/lib/at_build;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->dk:I

    invoke-static {v0, v1}, Lccc71/pmw/lib/at_build;->a(Lccc71/pmw/lib/at_build;I)V

    goto :goto_0

    .line 256
    :cond_2
    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    .line 257
    iget-object v2, p0, Lccc71/pmw/lib/q;->a:Lccc71/pmw/lib/p;

    invoke-static {v2}, Lccc71/pmw/lib/p;->a(Lccc71/pmw/lib/p;)Lccc71/pmw/lib/at_build;

    move-result-object v2

    invoke-virtual {v2}, Lccc71/pmw/lib/at_build;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lccc71/pmw/lib/q;->a:Lccc71/pmw/lib/p;

    invoke-static {v3}, Lccc71/pmw/lib/p;->a(Lccc71/pmw/lib/p;)Lccc71/pmw/lib/at_build;

    move-result-object v3

    invoke-static {v3}, Lccc71/pmw/lib/at_build;->b(Lccc71/pmw/lib/at_build;)[I

    move-result-object v3

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 261
    array-length v4, v3

    move v2, v1

    .line 262
    :goto_2
    if-lt v2, v4, :cond_4

    .line 252
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 264
    :cond_4
    aget-object v5, v3, v2

    invoke-static {v5, v9}, Lccc71/utils/ag;->a(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v5

    .line 265
    aget-object v6, v5, v1

    .line 266
    aget-object v5, v5, v8

    .line 268
    iget-object v7, p0, Lccc71/pmw/lib/q;->a:Lccc71/pmw/lib/p;

    invoke-static {v7}, Lccc71/pmw/lib/p;->a(Lccc71/pmw/lib/p;)Lccc71/pmw/lib/at_build;

    move-result-object v7

    invoke-static {v7}, Lccc71/pmw/lib/at_build;->c(Lccc71/pmw/lib/at_build;)Lccc71/pmw/b/a;

    move-result-object v7

    invoke-virtual {v7, v6, v5}, Lccc71/pmw/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 274
    :cond_5
    iget-object v0, p0, Lccc71/pmw/lib/q;->a:Lccc71/pmw/lib/p;

    invoke-static {v0}, Lccc71/pmw/lib/p;->a(Lccc71/pmw/lib/p;)Lccc71/pmw/lib/at_build;

    move-result-object v0

    invoke-virtual {v0}, Lccc71/pmw/lib/at_build;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lccc71/pmw/lib/q;->a:Lccc71/pmw/lib/p;

    invoke-static {v2}, Lccc71/pmw/lib/p;->a(Lccc71/pmw/lib/p;)Lccc71/pmw/lib/at_build;

    move-result-object v2

    invoke-static {v2}, Lccc71/pmw/lib/at_build;->b(Lccc71/pmw/lib/at_build;)[I

    move-result-object v2

    add-int/lit8 v3, p2, -0x1

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 276
    array-length v3, v2

    move v0, v1

    .line 277
    :goto_3
    if-ge v0, v3, :cond_1

    .line 279
    aget-object v4, v2, v0

    invoke-static {v4, v9}, Lccc71/utils/ag;->a(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v4

    .line 280
    aget-object v5, v4, v1

    .line 281
    aget-object v4, v4, v8

    .line 283
    iget-object v6, p0, Lccc71/pmw/lib/q;->a:Lccc71/pmw/lib/p;

    invoke-static {v6}, Lccc71/pmw/lib/p;->a(Lccc71/pmw/lib/p;)Lccc71/pmw/lib/at_build;

    move-result-object v6

    invoke-static {v6}, Lccc71/pmw/lib/at_build;->c(Lccc71/pmw/lib/at_build;)Lccc71/pmw/b/a;

    move-result-object v6

    invoke-virtual {v6, v5, v4}, Lccc71/pmw/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method
