.class final Lccc71/bmw/lib/db;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/bmw_settings;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/bmw_settings;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/db;->a:Lccc71/bmw/lib/bmw_settings;

    .line 1420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1424
    iget-object v0, p0, Lccc71/bmw/lib/db;->a:Lccc71/bmw/lib/bmw_settings;

    sget v1, Lccc71/bmw/lib/bmw_settings;->c:I

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lccc71/bmw/lib/bmw_settings;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 1425
    const/4 v0, 0x1

    return v0
.end method
