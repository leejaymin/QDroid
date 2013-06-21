.class final Lcom/sphericbox/syb/browse/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic z:Lcom/sphericbox/syb/browse/SettingsActivity;


# direct methods
.method private constructor <init>(Lcom/sphericbox/syb/browse/SettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sphericbox/syb/browse/a;->z:Lcom/sphericbox/syb/browse/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sphericbox/syb/browse/SettingsActivity;Lcom/sphericbox/syb/browse/h;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/sphericbox/syb/browse/a;-><init>(Lcom/sphericbox/syb/browse/SettingsActivity;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 82
    if-eqz p2, :cond_0

    .line 83
    iget-object v0, p0, Lcom/sphericbox/syb/browse/a;->z:Lcom/sphericbox/syb/browse/SettingsActivity;

    invoke-static {v0}, Lcom/sphericbox/syb/browse/SettingsActivity;->a(Lcom/sphericbox/syb/browse/SettingsActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 85
    :cond_0
    return-void
.end method
