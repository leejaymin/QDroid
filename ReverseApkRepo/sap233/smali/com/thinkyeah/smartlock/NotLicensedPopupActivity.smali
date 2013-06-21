.class public Lcom/thinkyeah/smartlock/NotLicensedPopupActivity;
.super Landroid/support/v4/app/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/g;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/NotLicensedPopupActivity;->requestWindowFeature(I)Z

    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/NotLicensedPopupActivity;->setContentView(I)V

    const v0, 0x7f0b0020

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/NotLicensedPopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/thinkyeah/smartlock/cn;

    invoke-direct {v1, p0}, Lcom/thinkyeah/smartlock/cn;-><init>(Lcom/thinkyeah/smartlock/NotLicensedPopupActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
