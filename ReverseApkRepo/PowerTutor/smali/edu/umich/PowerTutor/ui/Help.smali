.class public Ledu/umich/PowerTutor/ui/Help;
.super Landroid/app/Activity;
.source "Help.java"


# static fields
.field private static final powerTutorUrl:Ljava/lang/String; = "http://powertutor.org"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const/high16 v1, 0x7f03

    invoke-virtual {p0, v1}, Ledu/umich/PowerTutor/ui/Help;->setContentView(I)V

    .line 39
    const v1, 0x7f080003

    invoke-virtual {p0, v1}, Ledu/umich/PowerTutor/ui/Help;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 41
    .local v0, s2:Landroid/widget/TextView;
    new-instance v1, Ledu/umich/PowerTutor/ui/Help$1;

    invoke-direct {v1, p0}, Ledu/umich/PowerTutor/ui/Help$1;-><init>(Ledu/umich/PowerTutor/ui/Help;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    return-void
.end method
