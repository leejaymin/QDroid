.class final Lcom/rubycell/pianisthd/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/rubycell/pianisthd/DoubleRowActivity;


# direct methods
.method constructor <init>(Lcom/rubycell/pianisthd/DoubleRowActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/q;->a:Lcom/rubycell/pianisthd/DoubleRowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/rubycell/pianisthd/q;->a:Lcom/rubycell/pianisthd/DoubleRowActivity;

    iget-object v0, v0, Lcom/rubycell/pianisthd/DoubleRowActivity;->y:Landroid/content/Context;

    sget-object v1, Lcom/rubycell/pianisthd/d/b;->E:Ljava/lang/String;

    sget-object v2, Lcom/rubycell/pianisthd/d/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/rubycell/pianisthd/d/b;->E:Ljava/lang/String;

    sget-object v2, Lcom/rubycell/pianisthd/d/d;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/rubycell/pianisthd/OptionDownActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v0, v1

    :goto_0
    iget-object v1, p0, Lcom/rubycell/pianisthd/q;->a:Lcom/rubycell/pianisthd/DoubleRowActivity;

    invoke-virtual {v1, v0}, Lcom/rubycell/pianisthd/DoubleRowActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/q;->a:Lcom/rubycell/pianisthd/DoubleRowActivity;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/DoubleRowActivity;->c()V

    return-void

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/rubycell/pianisthd/SettingActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v0, v1

    goto :goto_0
.end method
