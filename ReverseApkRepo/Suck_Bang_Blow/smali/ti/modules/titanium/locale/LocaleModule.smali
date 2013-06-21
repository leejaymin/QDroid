.class public Lti/modules/titanium/locale/LocaleModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "LocaleModule.java"


# static fields
.field private static final LCAT:Ljava/lang/String; = "LocaleModule"


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lorg/appcelerator/kroll/KrollModule;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 29
    return-void
.end method


# virtual methods
.method public formatTelephoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "telephoneNumber"

    .prologue
    .line 78
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrencyCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "localeString"

    .prologue
    .line 52
    if-nez p1, :cond_0

    .line 53
    const/4 v1, 0x0

    .line 56
    :goto_0
    return-object v1

    .line 55
    :cond_0
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 56
    .local v0, locale:Ljava/util/Locale;
    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getCurrencyCode(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getCurrencySymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "currencyCode"

    .prologue
    .line 62
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getCurrencySymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getLocale()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocaleCurrencySymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "localeString"

    .prologue
    .line 68
    if-nez p1, :cond_0

    .line 69
    const/4 v1, 0x0

    .line 72
    :goto_0
    return-object v1

    .line 71
    :cond_0
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 72
    .local v0, locale:Ljava/util/Locale;
    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getCurrencySymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getString(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "invocation"
    .end parameter
    .parameter "key"
    .end parameter
    .parameter "defaultValue"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 91
    :try_start_0
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "string."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 93
    :goto_0
    return-object v1

    .line 92
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;
    move-object v1, p3

    .line 93
    goto :goto_0
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 2
    .parameter "language"

    .prologue
    .line 84
    const-string v0, "LocaleModule"

    const-string v1, "Locale.setLanguage not supported for Android."

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void
.end method
