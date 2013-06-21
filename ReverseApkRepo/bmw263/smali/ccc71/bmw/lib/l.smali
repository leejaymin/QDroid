.class final Lccc71/bmw/lib/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/k;

.field private final synthetic b:Lccc71/bmw/data/a/a;

.field private final synthetic c:Landroid/widget/EditText;

.field private final synthetic d:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/k;Lccc71/bmw/data/a/a;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/l;->a:Lccc71/bmw/lib/k;

    iput-object p2, p0, Lccc71/bmw/lib/l;->b:Lccc71/bmw/data/a/a;

    iput-object p3, p0, Lccc71/bmw/lib/l;->c:Landroid/widget/EditText;

    iput-object p4, p0, Lccc71/bmw/lib/l;->d:Landroid/widget/EditText;

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 205
    new-instance v0, Lccc71/bmw/data/a/b;

    iget-object v1, p0, Lccc71/bmw/lib/l;->a:Lccc71/bmw/lib/k;

    invoke-static {v1}, Lccc71/bmw/lib/k;->a(Lccc71/bmw/lib/k;)Lccc71/bmw/lib/bmw_battery_compare;

    move-result-object v1

    invoke-direct {v0, v1}, Lccc71/bmw/data/a/b;-><init>(Landroid/content/Context;)V

    .line 206
    invoke-virtual {v0}, Lccc71/bmw/data/a/b;->a()V

    .line 207
    iget-object v1, p0, Lccc71/bmw/lib/l;->b:Lccc71/bmw/data/a/a;

    iget-object v2, p0, Lccc71/bmw/lib/l;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lccc71/bmw/data/a/a;->b:Ljava/lang/String;

    .line 210
    :try_start_0
    iget-object v1, p0, Lccc71/bmw/lib/l;->b:Lccc71/bmw/data/a/a;

    iget-object v2, p0, Lccc71/bmw/lib/l;->d:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lccc71/bmw/data/a/a;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    iget-object v1, p0, Lccc71/bmw/lib/l;->b:Lccc71/bmw/data/a/a;

    invoke-virtual {v0, v1}, Lccc71/bmw/data/a/b;->b(Lccc71/bmw/data/a/a;)V

    .line 217
    invoke-virtual {v0}, Lccc71/bmw/data/a/b;->b()V

    .line 219
    iget-object v0, p0, Lccc71/bmw/lib/l;->a:Lccc71/bmw/lib/k;

    invoke-static {v0}, Lccc71/bmw/lib/k;->a(Lccc71/bmw/lib/k;)Lccc71/bmw/lib/bmw_battery_compare;

    move-result-object v0

    invoke-static {v0}, Lccc71/bmw/lib/bmw_battery_compare;->a(Lccc71/bmw/lib/bmw_battery_compare;)V

    .line 220
    return-void

    .line 214
    :catch_0
    move-exception v1

    iget-object v1, p0, Lccc71/bmw/lib/l;->b:Lccc71/bmw/data/a/a;

    const/16 v2, 0x5dc

    iput v2, v1, Lccc71/bmw/data/a/a;->c:I

    goto :goto_0
.end method
