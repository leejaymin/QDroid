.class abstract Lcom/samsungapps/plasma/g;
.super Lcom/samsungapps/plasma/h;


# static fields
.field protected static final G:I = 0xbc5


# instance fields
.field protected A:Ljava/lang/String;

.field protected B:Ljava/lang/String;

.field protected C:I

.field protected D:Ljava/lang/String;

.field protected E:Ljava/lang/String;

.field protected F:Landroid/view/View;

.field protected t:Lcom/samsungapps/plasma/d;

.field protected u:Landroid/content/Context;

.field protected v:Ljava/lang/String;

.field protected w:Ljava/lang/String;

.field protected x:D

.field protected y:Ljava/lang/String;

.field protected z:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/samsungapps/plasma/h;-><init>()V

    iput-object v2, p0, Lcom/samsungapps/plasma/g;->t:Lcom/samsungapps/plasma/d;

    iput-object v2, p0, Lcom/samsungapps/plasma/g;->u:Landroid/content/Context;

    iput-object v2, p0, Lcom/samsungapps/plasma/g;->v:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsungapps/plasma/g;->w:Ljava/lang/String;

    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/samsungapps/plasma/g;->x:D

    iput-object v2, p0, Lcom/samsungapps/plasma/g;->y:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsungapps/plasma/g;->z:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsungapps/plasma/g;->A:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsungapps/plasma/g;->B:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsungapps/plasma/g;->C:I

    iput-object v2, p0, Lcom/samsungapps/plasma/g;->D:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsungapps/plasma/g;->E:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsungapps/plasma/g;->F:Landroid/view/View;

    return-void
.end method


# virtual methods
.method abstract a()Ljava/lang/String;
.end method

.method a(D)V
    .locals 0

    iput-wide p1, p0, Lcom/samsungapps/plasma/g;->x:D

    return-void
.end method

.method protected a(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsungapps/plasma/g;->t:Lcom/samsungapps/plasma/d;

    const/16 v1, 0xc8

    const-string v2, "IDS_SAPPS_POP_NETWORK_UNAVAILABLE"

    invoke-static {v2}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsungapps/plasma/d;->b(ILjava/lang/String;)Landroid/app/Dialog;

    return-void
.end method

.method protected a(IILjava/lang/String;)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    iget-object v0, p0, Lcom/samsungapps/plasma/g;->t:Lcom/samsungapps/plasma/d;

    invoke-virtual {v0, p2, p3}, Lcom/samsungapps/plasma/d;->b(ILjava/lang/String;)Landroid/app/Dialog;

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsungapps/plasma/g;->t:Lcom/samsungapps/plasma/d;

    const-string v1, "IDS_SAPPS_BODY_THIS_EMAIL_ADDRESS_CANNOT_BE_USED_IN_THIS_COUNTRY_SAMSUNG_APPS_LAUNCH_ERROR_MSG"

    invoke-static {v1}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/samsungapps/plasma/d;->b(ILjava/lang/String;)Landroid/app/Dialog;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xbc5
        :pswitch_0
    .end packed-switch
.end method

.method protected a(ILcom/samsungapps/plasma/m;)V
    .locals 0

    return-void
.end method

.method a(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/g;->u:Landroid/content/Context;

    return-void
.end method

.method a(Lcom/samsungapps/plasma/d;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/g;->t:Lcom/samsungapps/plasma/d;

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/g;->v:Ljava/lang/String;

    return-void
.end method

.method abstract b()Landroid/view/View;
.end method

.method b(I)V
    .locals 0

    iput p1, p0, Lcom/samsungapps/plasma/g;->C:I

    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/g;->w:Ljava/lang/String;

    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/g;->y:Ljava/lang/String;

    return-void
.end method

.method abstract c()Z
.end method

.method d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/g;->v:Ljava/lang/String;

    return-object v0
.end method

.method d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/g;->z:Ljava/lang/String;

    return-void
.end method

.method e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/g;->w:Ljava/lang/String;

    return-object v0
.end method

.method e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/g;->B:Ljava/lang/String;

    return-void
.end method

.method f()D
    .locals 2

    iget-wide v0, p0, Lcom/samsungapps/plasma/g;->x:D

    return-wide v0
.end method

.method f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/g;->A:Ljava/lang/String;

    return-void
.end method

.method g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/g;->y:Ljava/lang/String;

    return-object v0
.end method

.method g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/g;->D:Ljava/lang/String;

    return-void
.end method

.method h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/g;->z:Ljava/lang/String;

    return-object v0
.end method

.method h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/g;->E:Ljava/lang/String;

    return-void
.end method

.method i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/g;->B:Ljava/lang/String;

    return-object v0
.end method

.method j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/g;->A:Ljava/lang/String;

    return-object v0
.end method

.method k()I
    .locals 1

    iget v0, p0, Lcom/samsungapps/plasma/g;->C:I

    return v0
.end method

.method l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/g;->D:Ljava/lang/String;

    return-object v0
.end method

.method m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/g;->E:Ljava/lang/String;

    return-object v0
.end method
