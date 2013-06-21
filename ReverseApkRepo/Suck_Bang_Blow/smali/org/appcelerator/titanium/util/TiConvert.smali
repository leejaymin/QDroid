.class public Lorg/appcelerator/titanium/util/TiConvert;
.super Ljava/lang/Object;
.source "TiConvert.java"


# static fields
.field public static final ASSET_URL:Ljava/lang/String; = "file:///android_asset/"

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field public static final JSON_DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

.field private static final LCAT:Ljava/lang/String; = "TiConvert"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/titanium/util/TiConvert;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fillLayout(Lorg/appcelerator/kroll/KrollDict;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;)Z
    .locals 12
    .parameter "d"
    .parameter "layoutParams"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v7, 0x0

    const-string v9, "width"

    const-string v8, "height"

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, dirty:Z
    const/4 v3, 0x0

    .line 139
    .local v3, width:Ljava/lang/Object;
    const/4 v1, 0x0

    .line 140
    .local v1, height:Ljava/lang/Object;
    const-string v5, "size"

    invoke-virtual {p0, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 141
    const-string v5, "size"

    invoke-virtual {p0, v5}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/kroll/KrollDict;

    .line 142
    .local v2, size:Lorg/appcelerator/kroll/KrollDict;
    const-string v5, "width"

    invoke-virtual {v2, v9}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 143
    const-string v5, "height"

    invoke-virtual {v2, v8}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 145
    .end local v1           #height:Ljava/lang/Object;
    .end local v2           #size:Lorg/appcelerator/kroll/KrollDict;
    .end local v3           #width:Ljava/lang/Object;
    :cond_0
    const-string v5, "left"

    invoke-virtual {p0, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 146
    const-string v5, "left"

    invoke-static {p0, v5, v7}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v5

    iput-object v5, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionLeft:Lorg/appcelerator/titanium/TiDimension;

    .line 147
    const/4 v0, 0x1

    .line 149
    :cond_1
    const-string v5, "top"

    invoke-virtual {p0, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 150
    const-string v5, "top"

    const/4 v6, 0x3

    invoke-static {p0, v5, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v5

    iput-object v5, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    .line 151
    const/4 v0, 0x1

    .line 153
    :cond_2
    const-string v5, "center"

    invoke-virtual {p0, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 154
    const-string v5, "center"

    invoke-virtual {p0, v5}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, p1}, Lorg/appcelerator/titanium/util/TiConvert;->updateLayoutCenter(Ljava/lang/Object;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;)V

    .line 155
    const/4 v0, 0x1

    .line 157
    :cond_3
    const-string v5, "right"

    invoke-virtual {p0, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 158
    const-string v5, "right"

    const/4 v6, 0x2

    invoke-static {p0, v5, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v5

    iput-object v5, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionRight:Lorg/appcelerator/titanium/TiDimension;

    .line 159
    const/4 v0, 0x1

    .line 161
    :cond_4
    const-string v5, "bottom"

    invoke-virtual {p0, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 162
    const-string v5, "bottom"

    const/4 v6, 0x5

    invoke-static {p0, v5, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v5

    iput-object v5, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionBottom:Lorg/appcelerator/titanium/TiDimension;

    .line 163
    const/4 v0, 0x1

    .line 165
    :cond_5
    if-nez v3, :cond_6

    const-string v5, "width"

    invoke-virtual {p0, v9}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 166
    :cond_6
    if-nez v3, :cond_12

    .line 168
    const-string v5, "width"

    invoke-virtual {p0, v9}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .restart local v3       #width:Ljava/lang/Object;
    move-object v5, v3

    .line 170
    .end local v3           #width:Ljava/lang/Object;
    :goto_0
    if-eqz v5, :cond_7

    const-string v6, "auto"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 171
    :cond_7
    iput-object v11, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    .line 172
    iput-boolean v10, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoWidth:Z

    .line 177
    :goto_1
    const/4 v0, 0x1

    .line 179
    :cond_8
    if-nez v1, :cond_9

    const-string v5, "height"

    invoke-virtual {p0, v8}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 180
    :cond_9
    if-nez v1, :cond_11

    .line 182
    const-string v5, "height"

    invoke-virtual {p0, v8}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .restart local v1       #height:Ljava/lang/Object;
    move-object v5, v1

    .line 184
    .end local v1           #height:Ljava/lang/Object;
    :goto_2
    if-eqz v5, :cond_a

    const-string v6, "auto"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 185
    :cond_a
    iput-object v11, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    .line 186
    iput-boolean v10, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoHeight:Z

    .line 191
    :goto_3
    const/4 v0, 0x1

    .line 193
    :cond_b
    const-string v5, "zIndex"

    invoke-virtual {p0, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 194
    const-string v5, "zIndex"

    invoke-virtual {p0, v5}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 195
    .local v4, zIndex:Ljava/lang/Object;
    if-eqz v4, :cond_10

    .line 196
    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v5

    iput v5, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionZIndex:I

    .line 200
    :goto_4
    const/4 v0, 0x1

    .line 202
    .end local v4           #zIndex:Ljava/lang/Object;
    :cond_c
    const-string v5, "transform"

    invoke-virtual {p0, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 203
    const-string v5, "transform"

    invoke-virtual {p0, v5}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;

    iput-object p0, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTransform:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    .line 205
    :cond_d
    return v0

    .line 174
    .restart local p0
    :cond_e
    const/4 v6, 0x6

    invoke-static {v5, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/Object;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v5

    iput-object v5, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    .line 175
    iput-boolean v7, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoWidth:Z

    goto :goto_1

    .line 188
    :cond_f
    const/4 v6, 0x7

    invoke-static {v5, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/Object;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v5

    iput-object v5, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    .line 189
    iput-boolean v7, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoHeight:Z

    goto :goto_3

    .line 198
    .restart local v4       #zIndex:Ljava/lang/Object;
    :cond_10
    iput v7, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionZIndex:I

    goto :goto_4

    .end local v4           #zIndex:Ljava/lang/Object;
    :cond_11
    move-object v5, v1

    goto :goto_2

    :cond_12
    move-object v5, v3

    goto :goto_0
.end method

.method public static putInKrollDict(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter "d"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 43
    instance-of v1, p2, Ljava/lang/String;

    if-nez v1, :cond_0

    instance-of v1, p2, Ljava/lang/Number;

    if-nez v1, :cond_0

    instance-of v1, p2, Ljava/lang/Boolean;

    if-nez v1, :cond_0

    instance-of v1, p2, Ljava/util/Date;

    if-eqz v1, :cond_1

    .line 44
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .end local p0
    .end local p2
    :goto_0
    return-object p2

    .line 45
    .restart local p0
    .restart local p2
    :cond_1
    instance-of v1, p2, Lorg/appcelerator/kroll/KrollDict;

    if-eqz v1, :cond_3

    .line 46
    new-instance v3, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v3}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 47
    .local v3, nd:Lorg/appcelerator/kroll/KrollDict;
    check-cast p2, Lorg/appcelerator/kroll/KrollDict;

    .line 48
    .local p2, dict:Lorg/appcelerator/kroll/KrollDict;
    invoke-virtual {p2}, Lorg/appcelerator/kroll/KrollDict;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 49
    .local v2, k:Ljava/lang/String;
    invoke-virtual {p2, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lorg/appcelerator/titanium/util/TiConvert;->putInKrollDict(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 51
    .end local v2           #k:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, p1, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    move-object p2, v3

    .line 53
    .local p2, value:Lorg/appcelerator/kroll/KrollDict;
    goto :goto_0

    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #nd:Lorg/appcelerator/kroll/KrollDict;
    .local p2, value:Ljava/lang/Object;
    :cond_3
    instance-of v1, p2, [Ljava/lang/Object;

    if-eqz v1, :cond_e

    .line 54
    move-object v0, p2

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [Ljava/lang/Object;

    .line 55
    .local v1, a:[Ljava/lang/Object;
    array-length v4, v1

    .line 56
    .local v4, len:I
    if-lez v4, :cond_d

    .line 57
    const/4 v2, 0x0

    aget-object v2, v1, v2

    .line 58
    .local v2, v:Ljava/lang/Object;
    sget-boolean v3, Lorg/appcelerator/titanium/util/TiConvert;->DBG:Z

    if-eqz v3, :cond_4

    .line 59
    if-eqz v2, :cond_5

    .line 60
    const-string v3, "TiConvert"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Array member is type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_4
    :goto_2
    if-eqz v2, :cond_7

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 66
    new-array v3, v4, [Ljava/lang/String;

    .line 67
    .local v3, sa:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    if-ge v2, v4, :cond_6

    .line 68
    aget-object v5, v1, v2

    check-cast v5, Ljava/lang/String;

    aput-object v5, v3, v2

    .line 67
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 62
    .end local v3           #sa:[Ljava/lang/String;
    .local v2, v:Ljava/lang/Object;
    :cond_5
    const-string v3, "TiConvert"

    const-string v5, "First member of array is null"

    invoke-static {v3, v5}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 70
    .local v2, i:I
    .restart local v3       #sa:[Ljava/lang/String;
    :cond_6
    invoke-virtual {p0, p1, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move p0, v2

    .line 71
    .end local v2           #i:I
    .local p0, i:I
    goto/16 :goto_0

    .end local v3           #sa:[Ljava/lang/String;
    .local v2, v:Ljava/lang/Object;
    .local p0, d:Lorg/appcelerator/kroll/KrollDict;
    :cond_7
    if-eqz v2, :cond_9

    instance-of v3, v2, Ljava/lang/Double;

    if-eqz v3, :cond_9

    .line 72
    new-array v2, v4, [D

    .line 73
    .local v2, da:[D
    const/4 v3, 0x0

    .local v3, i:I
    :goto_4
    if-ge v3, v4, :cond_8

    .line 74
    aget-object v5, v1, v3

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    aput-wide v5, v2, v3

    .line 73
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 76
    :cond_8
    invoke-virtual {p0, p1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move p0, v3

    .line 77
    .end local v3           #i:I
    .local p0, i:I
    goto/16 :goto_0

    .local v2, v:Ljava/lang/Object;
    .local p0, d:Lorg/appcelerator/kroll/KrollDict;
    :cond_9
    if-eqz v2, :cond_b

    instance-of v2, v2, Lorg/appcelerator/kroll/KrollObject;

    .end local v2           #v:Ljava/lang/Object;
    if-eqz v2, :cond_b

    .line 78
    new-array v5, v4, [Lorg/appcelerator/kroll/KrollProxy;

    .line 79
    .local v5, pa:[Lorg/appcelerator/kroll/KrollProxy;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    if-ge v2, v4, :cond_a

    .line 80
    aget-object v3, v1, v2

    check-cast v3, Lorg/appcelerator/kroll/KrollObject;

    .line 81
    .local v3, ko:Lorg/appcelerator/kroll/KrollObject;
    invoke-virtual {v3}, Lorg/appcelerator/kroll/KrollObject;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object v3

    .end local v3           #ko:Lorg/appcelerator/kroll/KrollObject;
    aput-object v3, v5, v2

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 83
    :cond_a
    invoke-virtual {p0, p1, v5}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move p0, v2

    .line 84
    .end local v2           #i:I
    .local p0, i:I
    goto/16 :goto_0

    .line 86
    .end local v5           #pa:[Lorg/appcelerator/kroll/KrollProxy;
    .local p0, d:Lorg/appcelerator/kroll/KrollDict;
    :cond_b
    new-array v3, v4, [Ljava/lang/Object;

    .line 87
    .local v3, oa:[Ljava/lang/Object;
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_6
    if-ge v2, v4, :cond_c

    .line 88
    aget-object v5, v1, v2

    aput-object v5, v3, v2

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 90
    :cond_c
    invoke-virtual {p0, p1, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move p0, v2

    .end local v2           #i:I
    .local p0, i:I
    goto/16 :goto_0

    .line 94
    .end local v3           #oa:[Ljava/lang/Object;
    .local p0, d:Lorg/appcelerator/kroll/KrollDict;
    :cond_d
    move-object v0, p2

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .end local v1           #a:[Ljava/lang/Object;
    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 96
    .end local v4           #len:I
    :cond_e
    if-nez p2, :cond_f

    .line 97
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 98
    :cond_f
    instance-of v1, p2, Lorg/appcelerator/kroll/KrollProxy;

    if-eqz v1, :cond_10

    .line 99
    invoke-virtual {p0, p1, p2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 100
    :cond_10
    instance-of v1, p2, Lorg/appcelerator/titanium/kroll/KrollCallback;

    if-nez v1, :cond_11

    instance-of v1, p2, Lorg/mozilla/javascript/Function;

    if-eqz v1, :cond_12

    .line 101
    :cond_11
    invoke-virtual {p0, p1, p2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 102
    :cond_12
    instance-of v1, p2, Ljava/util/Map;

    if-eqz v1, :cond_14

    .line 103
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 104
    .local v1, dict:Lorg/appcelerator/kroll/KrollDict;
    move-object v0, p2

    check-cast v0, Ljava/util/Map;

    move-object v4, v0

    .line 105
    .local v4, map:Ljava/util/Map;,"Ljava/util/Map<**>;"
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 106
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 108
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 109
    .local v3, k:Ljava/lang/String;
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v1, v3, v5}, Lorg/appcelerator/titanium/util/TiConvert;->putInKrollDict(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 111
    .end local v3           #k:Ljava/lang/String;
    :cond_13
    invoke-virtual {p0, p1, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 113
    .end local v1           #dict:Lorg/appcelerator/kroll/KrollDict;
    .end local v2           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v4           #map:Ljava/util/Map;,"Ljava/util/Map<**>;"
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0           #d:Lorg/appcelerator/kroll/KrollDict;
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported property type "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    .end local p2           #value:Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toBlob(Ljava/lang/Object;)Lorg/appcelerator/titanium/TiBlob;
    .locals 0
    .parameter "value"

    .prologue
    .line 351
    check-cast p0, Lorg/appcelerator/titanium/TiBlob;

    .end local p0
    return-object p0
.end method

.method public static toBlob(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Lorg/appcelerator/titanium/TiBlob;
    .locals 1
    .parameter "object"
    .parameter "property"

    .prologue
    .line 355
    invoke-virtual {p0, p1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toBlob(Ljava/lang/Object;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v0

    return-object v0
.end method

.method public static toBoolean(Ljava/lang/Object;)Z
    .locals 3
    .parameter "value"

    .prologue
    .line 233
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 234
    check-cast p0, Ljava/lang/Boolean;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 236
    :goto_0
    return v0

    .line 235
    .restart local p0
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 236
    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 238
    .restart local p0
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to boolean."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toBoolean(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Z
    .locals 1
    .parameter "d"
    .parameter "key"

    .prologue
    .line 242
    invoke-virtual {p0, p1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static toColor(Ljava/lang/String;)I
    .locals 1
    .parameter "value"

    .prologue
    .line 120
    invoke-static {p0}, Lorg/appcelerator/titanium/util/TiColorHelper;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static toColor(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)I
    .locals 1
    .parameter "d"
    .parameter "key"

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static toColorDrawable(Ljava/lang/String;)Landroid/graphics/drawable/ColorDrawable;
    .locals 2
    .parameter "value"

    .prologue
    .line 128
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {p0}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public static toColorDrawable(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Landroid/graphics/drawable/ColorDrawable;
    .locals 1
    .parameter "d"
    .parameter "key"

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toColorDrawable(Ljava/lang/String;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static toDate(Ljava/lang/Object;)Ljava/util/Date;
    .locals 3
    .parameter "value"

    .prologue
    .line 432
    instance-of v2, p0, Ljava/util/Date;

    if-eqz v2, :cond_0

    .line 433
    check-cast p0, Ljava/util/Date;

    .end local p0
    move-object v2, p0

    .line 438
    :goto_0
    return-object v2

    .line 434
    .restart local p0
    :cond_0
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_1

    .line 435
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 436
    .local v0, millis:J
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    .line 438
    .end local v0           #millis:J
    .restart local p0
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static toDate(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .parameter "d"
    .parameter "key"

    .prologue
    .line 442
    invoke-virtual {p0, p1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static toDouble(Ljava/lang/Object;)D
    .locals 3
    .parameter "value"

    .prologue
    .line 276
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 277
    check-cast p0, Ljava/lang/Double;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 281
    :goto_0
    return-wide v0

    .line 278
    .restart local p0
    :cond_0
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 279
    check-cast p0, Ljava/lang/Integer;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    .line 280
    .restart local p0
    :cond_1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 281
    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_0

    .line 283
    .restart local p0
    :cond_2
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toDouble(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)D
    .locals 2
    .parameter "d"
    .parameter "key"

    .prologue
    .line 287
    invoke-virtual {p0, p1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toErrorObject(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    .locals 4
    .parameter "code"
    .parameter "msg"

    .prologue
    .line 342
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lorg/appcelerator/kroll/KrollDict;-><init>(I)V

    .line 343
    .local v0, d:Lorg/appcelerator/kroll/KrollDict;
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 344
    .local v1, e:Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "code"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    const-string v2, "message"

    invoke-virtual {v1, v2, p1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const-string v2, "error"

    invoke-virtual {v0, v2, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    return-object v0
.end method

.method public static toFloat(Ljava/lang/Object;)F
    .locals 3
    .parameter "value"

    .prologue
    .line 261
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 262
    check-cast p0, Ljava/lang/Double;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    .line 266
    :goto_0
    return v0

    .line 263
    .restart local p0
    :cond_0
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 264
    check-cast p0, Ljava/lang/Integer;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Integer;->floatValue()F

    move-result v0

    goto :goto_0

    .line 265
    .restart local p0
    :cond_1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 266
    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_0

    .line 268
    .restart local p0
    :cond_2
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toFloat(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)F
    .locals 1
    .parameter "d"
    .parameter "key"

    .prologue
    .line 272
    invoke-virtual {p0, p1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public static toInt(Ljava/lang/Object;)I
    .locals 3
    .parameter "value"

    .prologue
    .line 246
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 247
    check-cast p0, Ljava/lang/Double;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Double;->intValue()I

    move-result v0

    .line 251
    :goto_0
    return v0

    .line 248
    .restart local p0
    :cond_0
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 249
    check-cast p0, Ljava/lang/Integer;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 250
    .restart local p0
    :cond_1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 251
    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 253
    .restart local p0
    :cond_2
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toInt(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)I
    .locals 1
    .parameter "d"
    .parameter "key"

    .prologue
    .line 257
    invoke-virtual {p0, p1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static toJSON(Lorg/appcelerator/kroll/KrollDict;)Lorg/json/JSONObject;
    .locals 9
    .parameter "data"

    .prologue
    const-string v8, "TiConvert"

    .line 360
    if-nez p0, :cond_0

    .line 361
    const/4 v5, 0x0

    .line 390
    :goto_0
    return-object v5

    .line 363
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 365
    .local v2, json:Lorg/json/JSONObject;
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollDict;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 367
    .local v3, key:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 368
    .local v4, o:Ljava/lang/Object;
    if-nez v4, :cond_1

    .line 369
    sget-object v5, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 385
    .end local v4           #o:Ljava/lang/Object;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 386
    .local v0, e:Lorg/json/JSONException;
    const-string v5, "TiConvert"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to JSON encode key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 370
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v4       #o:Ljava/lang/Object;
    :cond_1
    :try_start_1
    instance-of v5, v4, Ljava/lang/Number;

    if-eqz v5, :cond_2

    .line 371
    check-cast v4, Ljava/lang/Number;

    .end local v4           #o:Ljava/lang/Object;
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 372
    .restart local v4       #o:Ljava/lang/Object;
    :cond_2
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 373
    check-cast v4, Ljava/lang/String;

    .end local v4           #o:Ljava/lang/Object;
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 374
    .restart local v4       #o:Ljava/lang/Object;
    :cond_3
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_4

    .line 375
    check-cast v4, Ljava/lang/Boolean;

    .end local v4           #o:Ljava/lang/Object;
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 376
    .restart local v4       #o:Ljava/lang/Object;
    :cond_4
    instance-of v5, v4, Ljava/util/Date;

    if-eqz v5, :cond_5

    .line 377
    check-cast v4, Ljava/util/Date;

    .end local v4           #o:Ljava/lang/Object;
    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 378
    .restart local v4       #o:Ljava/lang/Object;
    :cond_5
    instance-of v5, v4, Lorg/appcelerator/kroll/KrollDict;

    if-eqz v5, :cond_6

    .line 379
    check-cast v4, Lorg/appcelerator/kroll/KrollDict;

    .end local v4           #o:Ljava/lang/Object;
    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toJSON(Lorg/appcelerator/kroll/KrollDict;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 380
    .restart local v4       #o:Ljava/lang/Object;
    :cond_6
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 381
    check-cast v4, [Ljava/lang/Object;

    .end local v4           #o:Ljava/lang/Object;
    check-cast v4, [Ljava/lang/Object;

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toJSONArray([Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 383
    .restart local v4       #o:Ljava/lang/Object;
    :cond_7
    const-string v5, "TiConvert"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .end local v3           #key:Ljava/lang/String;
    .end local v4           #o:Ljava/lang/Object;
    :cond_8
    move-object v5, v2

    .line 390
    goto/16 :goto_0
.end method

.method public static toJSONArray([Ljava/lang/Object;)Lorg/json/JSONArray;
    .locals 8
    .parameter "a"

    .prologue
    const-string v7, "TiConvert"

    .line 394
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 395
    .local v2, ja:Lorg/json/JSONArray;
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/Object;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_9

    aget-object v4, v0, v1

    .line 396
    .local v4, o:Ljava/lang/Object;
    if-nez v4, :cond_1

    .line 397
    sget-boolean v5, Lorg/appcelerator/titanium/util/TiConvert;->DBG:Z

    if-eqz v5, :cond_0

    .line 398
    const-string v5, "TiConvert"

    const-string v5, "Skipping null value in array"

    invoke-static {v7, v5}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    .end local v4           #o:Ljava/lang/Object;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 402
    .restart local v4       #o:Ljava/lang/Object;
    :cond_1
    if-nez v4, :cond_2

    .line 403
    sget-object v5, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 404
    :cond_2
    instance-of v5, v4, Ljava/lang/Number;

    if-eqz v5, :cond_3

    .line 405
    check-cast v4, Ljava/lang/Number;

    .end local v4           #o:Ljava/lang/Object;
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 406
    .restart local v4       #o:Ljava/lang/Object;
    :cond_3
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 407
    check-cast v4, Ljava/lang/String;

    .end local v4           #o:Ljava/lang/Object;
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 408
    .restart local v4       #o:Ljava/lang/Object;
    :cond_4
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_5

    .line 409
    check-cast v4, Ljava/lang/Boolean;

    .end local v4           #o:Ljava/lang/Object;
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 410
    .restart local v4       #o:Ljava/lang/Object;
    :cond_5
    instance-of v5, v4, Ljava/util/Date;

    if-eqz v5, :cond_6

    .line 411
    check-cast v4, Ljava/util/Date;

    .end local v4           #o:Ljava/lang/Object;
    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 412
    .restart local v4       #o:Ljava/lang/Object;
    :cond_6
    instance-of v5, v4, Lorg/appcelerator/kroll/KrollDict;

    if-eqz v5, :cond_7

    .line 413
    check-cast v4, Lorg/appcelerator/kroll/KrollDict;

    .end local v4           #o:Ljava/lang/Object;
    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toJSON(Lorg/appcelerator/kroll/KrollDict;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 414
    .restart local v4       #o:Ljava/lang/Object;
    :cond_7
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 415
    check-cast v4, [Ljava/lang/Object;

    .end local v4           #o:Ljava/lang/Object;
    check-cast v4, [Ljava/lang/Object;

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toJSONArray([Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 417
    .restart local v4       #o:Ljava/lang/Object;
    :cond_8
    const-string v5, "TiConvert"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 420
    .end local v4           #o:Ljava/lang/Object;
    :cond_9
    return-object v2
.end method

.method public static toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    .line 424
    instance-of v1, p0, Ljava/util/Date;

    if-eqz v1, :cond_0

    .line 425
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 426
    .local v0, df:Ljava/text/DateFormat;
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 427
    check-cast p0, Ljava/util/Date;

    .end local p0
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 428
    .end local v0           #df:Ljava/text/DateFormat;
    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    invoke-static {p0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 291
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static toString(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "d"
    .parameter "key"

    .prologue
    .line 294
    invoke-virtual {p0, p1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringArray([Ljava/lang/Object;)[Ljava/lang/String;
    .locals 3
    .parameter "parts"

    .prologue
    .line 298
    if-eqz p0, :cond_0

    array-length v2, p0

    new-array v2, v2, [Ljava/lang/String;

    move-object v1, v2

    .line 299
    .local v1, sparts:[Ljava/lang/String;
    :goto_0
    if-eqz p0, :cond_2

    .line 300
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 301
    aget-object v2, p0, v0

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_2
    aput-object v2, v1, v0

    .line 300
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 298
    .end local v0           #i:I
    .end local v1           #sparts:[Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    move-object v1, v2

    goto :goto_0

    .line 301
    .restart local v0       #i:I
    .restart local v1       #sparts:[Ljava/lang/String;
    :cond_1
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 304
    .end local v0           #i:I
    :cond_2
    return-object v1
.end method

.method public static toTiDimension(Ljava/lang/Object;I)Lorg/appcelerator/titanium/TiDimension;
    .locals 2
    .parameter "value"
    .parameter "valueType"

    .prologue
    .line 313
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "px"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 316
    .end local p0
    :cond_0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v0

    return-object v0
.end method

.method public static toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;
    .locals 1
    .parameter "value"
    .parameter "valueType"

    .prologue
    .line 309
    new-instance v0, Lorg/appcelerator/titanium/TiDimension;

    invoke-direct {v0, p0, p1}, Lorg/appcelerator/titanium/TiDimension;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static toTiDimension(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;
    .locals 1
    .parameter "d"
    .parameter "key"
    .parameter "valueType"

    .prologue
    .line 320
    invoke-virtual {p0, p1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/Object;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v0

    return-object v0
.end method

.method public static toURL(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    .line 325
    const/4 v0, 0x0

    .line 326
    .local v0, url:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/Uri;->isRelative()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 327
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 328
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file:///android_asset/Resources"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 337
    :goto_0
    return-object v0

    .line 331
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file:///android_asset/Resources/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 334
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static updateLayoutCenter(Ljava/lang/Object;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;)V
    .locals 7
    .parameter "value"
    .parameter "layoutParams"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v6, "y"

    const-string v5, "x"

    .line 210
    instance-of v2, p0, Lorg/appcelerator/kroll/KrollDict;

    if-eqz v2, :cond_2

    .line 211
    move-object v0, p0

    check-cast v0, Lorg/appcelerator/kroll/KrollDict;

    move-object v1, v0

    .line 212
    .local v1, center:Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "x"

    invoke-virtual {v1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    const-string v2, "x"

    invoke-static {v1, v5, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v2

    iput-object v2, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionCenterX:Lorg/appcelerator/titanium/TiDimension;

    .line 217
    :goto_0
    const-string v2, "y"

    invoke-virtual {v1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 218
    const-string v2, "y"

    const/4 v2, 0x4

    invoke-static {v1, v6, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v2

    iput-object v2, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionCenterY:Lorg/appcelerator/titanium/TiDimension;

    .line 229
    .end local v1           #center:Lorg/appcelerator/kroll/KrollDict;
    :goto_1
    return-void

    .line 215
    .restart local v1       #center:Lorg/appcelerator/kroll/KrollDict;
    :cond_0
    iput-object v3, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionCenterX:Lorg/appcelerator/titanium/TiDimension;

    goto :goto_0

    .line 220
    :cond_1
    iput-object v3, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionCenterY:Lorg/appcelerator/titanium/TiDimension;

    goto :goto_1

    .line 222
    .end local v1           #center:Lorg/appcelerator/kroll/KrollDict;
    :cond_2
    if-eqz p0, :cond_3

    .line 223
    invoke-static {p0, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/Object;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v2

    iput-object v2, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionCenterX:Lorg/appcelerator/titanium/TiDimension;

    .line 224
    iput-object v3, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionCenterY:Lorg/appcelerator/titanium/TiDimension;

    goto :goto_1

    .line 226
    :cond_3
    iput-object v3, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionCenterX:Lorg/appcelerator/titanium/TiDimension;

    .line 227
    iput-object v3, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionCenterY:Lorg/appcelerator/titanium/TiDimension;

    goto :goto_1
.end method
