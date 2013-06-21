.class public Lti/modules/titanium/app/properties/PropertiesModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "PropertiesModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/app/properties/PropertiesModule$DefaultValues;
    }
.end annotation


# static fields
.field private static final LCAT:Ljava/lang/String; = "PropertiesModule"


# instance fields
.field private appProperties:Lorg/appcelerator/titanium/TiProperties;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 1
    .parameter "tiContext"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lorg/appcelerator/kroll/KrollModule;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 32
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiContext;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getAppProperties()Lorg/appcelerator/titanium/TiProperties;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/app/properties/PropertiesModule;->appProperties:Lorg/appcelerator/titanium/TiProperties;

    .line 33
    return-void
.end method


# virtual methods
.method public getBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Object;
    .locals 2
    .parameter "key"
    .end parameter
    .parameter "defaultValue"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            defaultValueProvider = Lti/modules/titanium/app/properties/PropertiesModule$DefaultValues;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 50
    iget-object v1, p0, Lti/modules/titanium/app/properties/PropertiesModule;->appProperties:Lorg/appcelerator/titanium/TiProperties;

    invoke-virtual {v1, p1}, Lorg/appcelerator/titanium/TiProperties;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, p2

    .line 56
    :goto_0
    return-object v1

    .line 55
    :cond_0
    if-nez p2, :cond_1

    const/4 v1, 0x0

    move v0, v1

    .line 56
    .local v0, def:Z
    :goto_1
    iget-object v1, p0, Lti/modules/titanium/app/properties/PropertiesModule;->appProperties:Lorg/appcelerator/titanium/TiProperties;

    invoke-virtual {v1, p1, v0}, Lorg/appcelerator/titanium/TiProperties;->getBool(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 55
    .end local v0           #def:Z
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v0, v1

    goto :goto_1
.end method

.method public getDouble(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Object;
    .locals 4
    .parameter "key"
    .end parameter
    .parameter "defaultValue"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            defaultValueProvider = Lti/modules/titanium/app/properties/PropertiesModule$DefaultValues;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 62
    iget-object v2, p0, Lti/modules/titanium/app/properties/PropertiesModule;->appProperties:Lorg/appcelerator/titanium/TiProperties;

    invoke-virtual {v2, p1}, Lorg/appcelerator/titanium/TiProperties;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, p2

    .line 68
    :goto_0
    return-object v2

    .line 67
    :cond_0
    if-nez p2, :cond_1

    const-wide/16 v2, 0x0

    move-wide v0, v2

    .line 68
    .local v0, def:D
    :goto_1
    iget-object v2, p0, Lti/modules/titanium/app/properties/PropertiesModule;->appProperties:Lorg/appcelerator/titanium/TiProperties;

    invoke-virtual {v2, p1, v0, v1}, Lorg/appcelerator/titanium/TiProperties;->getDouble(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_0

    .line 67
    .end local v0           #def:D
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    move-wide v0, v2

    goto :goto_1
.end method

.method public getInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 2
    .parameter "key"
    .end parameter
    .parameter "defaultValue"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            defaultValueProvider = Lti/modules/titanium/app/properties/PropertiesModule$DefaultValues;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 74
    iget-object v1, p0, Lti/modules/titanium/app/properties/PropertiesModule;->appProperties:Lorg/appcelerator/titanium/TiProperties;

    invoke-virtual {v1, p1}, Lorg/appcelerator/titanium/TiProperties;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, p2

    .line 80
    :goto_0
    return-object v1

    .line 79
    :cond_0
    if-nez p2, :cond_1

    const/4 v1, 0x0

    move v0, v1

    .line 80
    .local v0, def:I
    :goto_1
    iget-object v1, p0, Lti/modules/titanium/app/properties/PropertiesModule;->appProperties:Lorg/appcelerator/titanium/TiProperties;

    invoke-virtual {v1, p1, v0}, Lorg/appcelerator/titanium/TiProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 79
    .end local v0           #def:I
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v0, v1

    goto :goto_1
.end method

.method public getList(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "invocation"
    .end parameter
    .parameter "key"
    .end parameter
    .parameter "defaultValue"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            defaultValueProvider = Lti/modules/titanium/app/properties/PropertiesModule$DefaultValues;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 93
    const/4 v5, 0x0

    new-array v4, v5, [Ljava/lang/String;

    .line 94
    .local v4, values:[Ljava/lang/String;
    iget-object v5, p0, Lti/modules/titanium/app/properties/PropertiesModule;->appProperties:Lorg/appcelerator/titanium/TiProperties;

    invoke-virtual {v5, p2}, Lorg/appcelerator/titanium/TiProperties;->hasListProperty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 96
    iget-object v5, p0, Lti/modules/titanium/app/properties/PropertiesModule;->appProperties:Lorg/appcelerator/titanium/TiProperties;

    invoke-virtual {v5, p2, v4}, Lorg/appcelerator/titanium/TiProperties;->getList(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 104
    :goto_0
    array-length v5, v4

    new-array v2, v5, [Ljava/lang/Object;

    .line 105
    .local v2, list:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_3

    .line 106
    aget-object v3, v4, v1

    .line 107
    .local v3, value:Ljava/lang/String;
    const-string v5, "{"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "}"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 109
    :try_start_0
    new-instance v5, Lorg/appcelerator/kroll/KrollDict;

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lorg/appcelerator/kroll/KrollDict;-><init>(Lorg/json/JSONObject;)V

    aput-object v5, v2, v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 98
    .end local v1           #i:I
    .end local v2           #list:[Ljava/lang/Object;
    .end local v3           #value:Ljava/lang/String;
    :cond_0
    if-nez p3, :cond_1

    .line 99
    const/4 v5, 0x0

    .line 117
    :goto_3
    return-object v5

    .line 101
    :cond_1
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 110
    .restart local v1       #i:I
    .restart local v2       #list:[Ljava/lang/Object;
    .restart local v3       #value:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 111
    .local v0, e:Lorg/json/JSONException;
    const-string v5, "PropertiesModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error converting JSON string to KrollDict, property:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 114
    .end local v0           #e:Lorg/json/JSONException;
    :cond_2
    aput-object v3, v2, v1

    goto :goto_2

    .end local v3           #value:Ljava/lang/String;
    :cond_3
    move-object v5, v2

    .line 117
    goto :goto_3
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "key"
    .end parameter
    .parameter "defaultValue"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            defaultValueProvider = Lti/modules/titanium/app/properties/PropertiesModule$DefaultValues;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 86
    iget-object v0, p0, Lti/modules/titanium/app/properties/PropertiesModule;->appProperties:Lorg/appcelerator/titanium/TiProperties;

    invoke-virtual {v0, p1, p2}, Lorg/appcelerator/titanium/TiProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasProperty(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 122
    iget-object v0, p0, Lti/modules/titanium/app/properties/PropertiesModule;->appProperties:Lorg/appcelerator/titanium/TiProperties;

    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/TiProperties;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public listProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lti/modules/titanium/app/properties/PropertiesModule;->appProperties:Lorg/appcelerator/titanium/TiProperties;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiProperties;->listProperties()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeProperty(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 132
    iget-object v0, p0, Lti/modules/titanium/app/properties/PropertiesModule;->appProperties:Lorg/appcelerator/titanium/TiProperties;

    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/TiProperties;->removeProperty(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public setBool(Ljava/lang/String;Z)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 137
    iget-object v0, p0, Lti/modules/titanium/app/properties/PropertiesModule;->appProperties:Lorg/appcelerator/titanium/TiProperties;

    invoke-virtual {v0, p1, p2}, Lorg/appcelerator/titanium/TiProperties;->setBool(Ljava/lang/String;Z)V

    .line 138
    return-void
.end method

.method public setDouble(Ljava/lang/String;D)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 142
    iget-object v0, p0, Lti/modules/titanium/app/properties/PropertiesModule;->appProperties:Lorg/appcelerator/titanium/TiProperties;

    invoke-virtual {v0, p1, p2, p3}, Lorg/appcelerator/titanium/TiProperties;->setDouble(Ljava/lang/String;D)V

    .line 143
    return-void
.end method

.method public setInt(Ljava/lang/String;I)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 147
    iget-object v0, p0, Lti/modules/titanium/app/properties/PropertiesModule;->appProperties:Lorg/appcelerator/titanium/TiProperties;

    invoke-virtual {v0, p1, p2}, Lorg/appcelerator/titanium/TiProperties;->setInt(Ljava/lang/String;I)V

    .line 148
    return-void
.end method

.method public setList(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .parameter "key"
    .parameter "value"

    .prologue
    .line 153
    const-string v3, "PropertiesModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setList passed with ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] and a list of ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] items."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/titanium/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    array-length v3, p2

    new-array v2, v3, [Ljava/lang/String;

    .line 156
    .local v2, valueList:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_2

    .line 157
    aget-object v1, p2, v0

    .line 158
    .local v1, v:Ljava/lang/Object;
    instance-of v3, v1, Lorg/appcelerator/kroll/KrollDict;

    if-eqz v3, :cond_0

    .line 159
    check-cast v1, Lorg/appcelerator/kroll/KrollDict;

    .end local v1           #v:Ljava/lang/Object;
    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toJSON(Lorg/appcelerator/kroll/KrollDict;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 156
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    .restart local v1       #v:Ljava/lang/Object;
    :cond_0
    instance-of v3, v1, [Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 161
    check-cast v1, [Ljava/lang/Object;

    .end local v1           #v:Ljava/lang/Object;
    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toJSONArray([Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1

    .line 163
    .restart local v1       #v:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1

    .line 166
    .end local v1           #v:Ljava/lang/Object;
    :cond_2
    iget-object v3, p0, Lti/modules/titanium/app/properties/PropertiesModule;->appProperties:Lorg/appcelerator/titanium/TiProperties;

    invoke-virtual {v3, p1, v2}, Lorg/appcelerator/titanium/TiProperties;->setList(Ljava/lang/String;[Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 171
    iget-object v0, p0, Lti/modules/titanium/app/properties/PropertiesModule;->appProperties:Lorg/appcelerator/titanium/TiProperties;

    invoke-virtual {v0, p1, p2}, Lorg/appcelerator/titanium/TiProperties;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void
.end method
