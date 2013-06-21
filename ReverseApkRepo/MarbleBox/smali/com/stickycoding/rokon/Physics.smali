.class public Lcom/stickycoding/rokon/Physics;
.super Ljava/lang/Object;
.source "Physics.java"


# static fields
.field public static world:Lcom/badlogic/gdx/physics/box2d/World;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bodyContact(Lcom/badlogic/gdx/physics/box2d/Contact;Lcom/badlogic/gdx/physics/box2d/Body;Lcom/badlogic/gdx/physics/box2d/Body;)Z
    .locals 3
    .parameter "contact"
    .parameter "body1"
    .parameter "body2"

    .prologue
    const/4 v2, 0x1

    .line 145
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Body;->getFixtureList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/physics/box2d/Contact;->getFixtureA()Lcom/badlogic/gdx/physics/box2d/Fixture;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/badlogic/gdx/physics/box2d/Body;->getFixtureList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/physics/box2d/Contact;->getFixtureB()Lcom/badlogic/gdx/physics/box2d/Fixture;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 150
    :goto_0
    return v0

    .line 147
    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Body;->getFixtureList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/physics/box2d/Contact;->getFixtureB()Lcom/badlogic/gdx/physics/box2d/Fixture;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/badlogic/gdx/physics/box2d/Body;->getFixtureList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/physics/box2d/Contact;->getFixtureA()Lcom/badlogic/gdx/physics/box2d/Fixture;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 148
    goto :goto_0

    .line 150
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static bodyFromPhysicsDef(Lcom/stickycoding/rokon/PhysicsDef;Lcom/stickycoding/rokon/DimensionalObject;)Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 6
    .parameter "physicsDef"
    .parameter "obj"

    .prologue
    const/high16 v5, 0x4000

    .line 130
    const/4 v0, 0x0

    .line 132
    .local v0, body:Lcom/badlogic/gdx/physics/box2d/Body;
    iget-object v2, p0, Lcom/stickycoding/rokon/PhysicsDef;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget-object v2, v2, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1}, Lcom/stickycoding/rokon/DimensionalObject;->getX()F

    move-result v3

    invoke-virtual {p1}, Lcom/stickycoding/rokon/DimensionalObject;->getHeight()F

    move-result v4

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 133
    iget-object v2, p0, Lcom/stickycoding/rokon/PhysicsDef;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    iget-object v2, v2, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1}, Lcom/stickycoding/rokon/DimensionalObject;->getY()F

    move-result v3

    invoke-virtual {p1}, Lcom/stickycoding/rokon/DimensionalObject;->getWidth()F

    move-result v4

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 135
    sget-object v2, Lcom/stickycoding/rokon/Physics;->world:Lcom/badlogic/gdx/physics/box2d/World;

    iget-object v3, p0, Lcom/stickycoding/rokon/PhysicsDef;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/physics/box2d/World;->createBody(Lcom/badlogic/gdx/physics/box2d/BodyDef;)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    .line 137
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/stickycoding/rokon/PhysicsDef;->fixtureCount:I

    if-lt v1, v2, :cond_0

    .line 141
    return-object v0

    .line 138
    :cond_0
    iget-object v2, p0, Lcom/stickycoding/rokon/PhysicsDef;->fixtureDefs:[Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/physics/box2d/Body;->createFixture(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)Lcom/badlogic/gdx/physics/box2d/Fixture;

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static fromFile(Ljava/lang/String;Lcom/stickycoding/rokon/DimensionalObject;)Lcom/stickycoding/rokon/PhysicsDef;
    .locals 17
    .parameter "filename"
    .parameter "obj"

    .prologue
    .line 43
    const/4 v5, 0x0

    .line 45
    .local v5, physicsDef:Lcom/stickycoding/rokon/PhysicsDef;
    :try_start_0
    sget-object v2, Lcom/stickycoding/rokon/Rokon;->currentActivity:Lcom/stickycoding/rokon/RokonActivity;

    invoke-virtual {v2}, Lcom/stickycoding/rokon/RokonActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 46
    .local v6, stream:Ljava/io/InputStream;
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 47
    .local v2, reader:Ljava/io/InputStreamReader;
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 48
    .local v3, in:Ljava/io/BufferedReader;
    const-string v2, ""

    .line 50
    .local v2, content:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, line:Ljava/lang/String;
    :goto_0
    if-nez v4, :cond_0

    .line 55
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 57
    new-instance v3, Lorg/json/JSONObject;

    .end local v3           #in:Ljava/io/BufferedReader;
    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 58
    .local v3, jsonObj:Lorg/json/JSONObject;
    const-string v2, "type"

    .end local v2           #content:Ljava/lang/String;
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 59
    .local v6, type:Ljava/lang/String;
    const-string v2, "type"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 60
    new-instance p1, Ljava/lang/Exception;

    .end local p1
    const-string v2, "Missing type"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v3           #jsonObj:Lorg/json/JSONObject;
    .end local v4           #line:Ljava/lang/String;
    .end local v6           #type:Ljava/lang/String;
    :catch_0
    move-exception p1

    move-object v2, v5

    .line 116
    .end local v5           #physicsDef:Lcom/stickycoding/rokon/PhysicsDef;
    .local v2, physicsDef:Lcom/stickycoding/rokon/PhysicsDef;
    .local p1, e:Ljava/lang/Exception;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error in bodyFromFile "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Lcom/stickycoding/rokon/Debug;->error(Ljava/lang/String;)V

    .line 117
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object/from16 p0, v2

    .line 119
    .end local v2           #physicsDef:Lcom/stickycoding/rokon/PhysicsDef;
    .end local p1           #e:Ljava/lang/Exception;
    .local p0, physicsDef:Lcom/stickycoding/rokon/PhysicsDef;
    :goto_2
    return-object p0

    .line 52
    .local v2, content:Ljava/lang/String;
    .local v3, in:Ljava/io/BufferedReader;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v5       #physicsDef:Lcom/stickycoding/rokon/PhysicsDef;
    .local v6, stream:Ljava/io/InputStream;
    .local p0, filename:Ljava/lang/String;
    .local p1, obj:Lcom/stickycoding/rokon/DimensionalObject;
    :cond_0
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .end local v2           #content:Ljava/lang/String;
    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    .end local v4           #line:Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 53
    .restart local v2       #content:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .restart local v4       #line:Ljava/lang/String;
    goto :goto_0

    .line 62
    .end local v2           #content:Ljava/lang/String;
    .local v3, jsonObj:Lorg/json/JSONObject;
    .local v6, type:Ljava/lang/String;
    :cond_1
    const-string v2, "fixtures"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 63
    .local v4, fixtures:Lorg/json/JSONArray;
    if-nez v4, :cond_2

    .line 64
    new-instance p1, Ljava/lang/Exception;

    .end local p1           #obj:Lcom/stickycoding/rokon/DimensionalObject;
    const-string v2, "No fixtures definition, what\'s the point?"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    .restart local p1       #obj:Lcom/stickycoding/rokon/DimensionalObject;
    :cond_2
    new-instance v9, Lcom/stickycoding/rokon/PhysicsDef;

    invoke-direct {v9}, Lcom/stickycoding/rokon/PhysicsDef;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 69
    .end local v5           #physicsDef:Lcom/stickycoding/rokon/PhysicsDef;
    .local v9, physicsDef:Lcom/stickycoding/rokon/PhysicsDef;
    :try_start_2
    new-instance v2, Lcom/badlogic/gdx/physics/box2d/BodyDef;

    invoke-direct {v2}, Lcom/badlogic/gdx/physics/box2d/BodyDef;-><init>()V

    .line 70
    .local v2, bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;
    const-string v3, "dynamic"

    .end local v3           #jsonObj:Lorg/json/JSONObject;
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->DynamicBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    iput-object v3, v2, Lcom/badlogic/gdx/physics/box2d/BodyDef;->type:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    .line 71
    :cond_3
    const-string v3, "kinematic"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->KinematicBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    iput-object v3, v2, Lcom/badlogic/gdx/physics/box2d/BodyDef;->type:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    .line 72
    :cond_4
    const-string v3, "static"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->StaticBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    iput-object v3, v2, Lcom/badlogic/gdx/physics/box2d/BodyDef;->type:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    .line 73
    :cond_5
    iget-object v3, v2, Lcom/badlogic/gdx/physics/box2d/BodyDef;->type:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    if-nez v3, :cond_6

    new-instance p1, Ljava/lang/Exception;

    .end local p1           #obj:Lcom/stickycoding/rokon/DimensionalObject;
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2           #bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;
    const-string v3, "Unknown type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 115
    .end local v6           #type:Ljava/lang/String;
    :catch_1
    move-exception p1

    move-object v2, v9

    .end local v9           #physicsDef:Lcom/stickycoding/rokon/PhysicsDef;
    .local v2, physicsDef:Lcom/stickycoding/rokon/PhysicsDef;
    goto/16 :goto_1

    .line 75
    .local v2, bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;
    .restart local v6       #type:Ljava/lang/String;
    .restart local v9       #physicsDef:Lcom/stickycoding/rokon/PhysicsDef;
    .restart local p1       #obj:Lcom/stickycoding/rokon/DimensionalObject;
    :cond_6
    iput-object v2, v9, Lcom/stickycoding/rokon/PhysicsDef;->bodyDef:Lcom/badlogic/gdx/physics/box2d/BodyDef;

    .line 78
    const/4 v2, 0x0

    .local v2, i:I
    move v5, v2

    .end local v2           #i:I
    .end local v6           #type:Ljava/lang/String;
    .local v5, i:I
    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v5, v2, :cond_7

    move-object/from16 p0, v9

    .end local v9           #physicsDef:Lcom/stickycoding/rokon/PhysicsDef;
    .local p0, physicsDef:Lcom/stickycoding/rokon/PhysicsDef;
    goto/16 :goto_2

    .line 79
    .restart local v9       #physicsDef:Lcom/stickycoding/rokon/PhysicsDef;
    .local p0, filename:Ljava/lang/String;
    :cond_7
    new-instance v3, Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    invoke-direct {v3}, Lcom/badlogic/gdx/physics/box2d/FixtureDef;-><init>()V

    .line 80
    .local v3, fixtureDef:Lcom/badlogic/gdx/physics/box2d/FixtureDef;
    const/4 v2, 0x0

    .line 82
    .local v2, shape:Lcom/badlogic/gdx/physics/box2d/Shape;
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 83
    .local v6, jsonFixture:Lorg/json/JSONObject;
    const-string v7, "shape"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 85
    .local v7, jsonShape:Lorg/json/JSONObject;
    const-string v8, "type"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "circle"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 86
    new-instance v8, Lcom/badlogic/gdx/physics/box2d/CircleShape;

    invoke-direct {v8}, Lcom/badlogic/gdx/physics/box2d/CircleShape;-><init>()V

    .line 87
    .end local v2           #shape:Lcom/badlogic/gdx/physics/box2d/Shape;
    .local v8, shape:Lcom/badlogic/gdx/physics/box2d/Shape;
    move-object v0, v8

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/CircleShape;

    move-object v2, v0

    .line 88
    .local v2, circleShape:Lcom/badlogic/gdx/physics/box2d/CircleShape;
    new-instance v10, Lcom/badlogic/gdx/math/Vector2;

    const-string v11, "x"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v11

    double-to-float v11, v11

    invoke-virtual/range {p1 .. p1}, Lcom/stickycoding/rokon/DimensionalObject;->getWidth()F

    move-result v12

    mul-float/2addr v11, v12

    const-string v12, "y"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v12

    double-to-float v12, v12

    invoke-virtual/range {p1 .. p1}, Lcom/stickycoding/rokon/DimensionalObject;->getHeight()F

    move-result v13

    mul-float/2addr v12, v13

    invoke-direct {v10, v11, v12}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {v2, v10}, Lcom/badlogic/gdx/physics/box2d/CircleShape;->setPosition(Lcom/badlogic/gdx/math/Vector2;)V

    .line 89
    const-string v10, "radius"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-float v10, v10

    invoke-virtual/range {p1 .. p1}, Lcom/stickycoding/rokon/DimensionalObject;->getHeight()F

    move-result v11

    mul-float/2addr v10, v11

    invoke-virtual {v2, v10}, Lcom/badlogic/gdx/physics/box2d/CircleShape;->setRadius(F)V

    move-object v2, v8

    .line 92
    .end local v8           #shape:Lcom/badlogic/gdx/physics/box2d/Shape;
    .local v2, shape:Lcom/badlogic/gdx/physics/box2d/Shape;
    :cond_8
    const-string v8, "type"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "polygon"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 93
    const-string v2, "x"

    .end local v2           #shape:Lcom/badlogic/gdx/physics/box2d/Shape;
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 94
    .local v8, jsonX:Lorg/json/JSONArray;
    const-string v2, "y"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 95
    .local v7, jsonY:Lorg/json/JSONArray;
    new-instance v11, Lcom/badlogic/gdx/physics/box2d/PolygonShape;

    invoke-direct {v11}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;-><init>()V

    .line 96
    .local v11, shape:Lcom/badlogic/gdx/physics/box2d/Shape;
    move-object v0, v11

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/PolygonShape;

    move-object v10, v0

    .line 97
    .local v10, polyShape:Lcom/badlogic/gdx/physics/box2d/PolygonShape;
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v12, v2, [Lcom/badlogic/gdx/math/Vector2;

    .line 98
    .local v12, vertices:[Lcom/badlogic/gdx/math/Vector2;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_4
    array-length v13, v12

    if-lt v2, v13, :cond_d

    .line 102
    invoke-virtual {v10, v12}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->set([Lcom/badlogic/gdx/math/Vector2;)V

    move-object v2, v11

    .line 105
    .end local v7           #jsonY:Lorg/json/JSONArray;
    .end local v8           #jsonX:Lorg/json/JSONArray;
    .end local v10           #polyShape:Lcom/badlogic/gdx/physics/box2d/PolygonShape;
    .end local v11           #shape:Lcom/badlogic/gdx/physics/box2d/Shape;
    .end local v12           #vertices:[Lcom/badlogic/gdx/math/Vector2;
    .local v2, shape:Lcom/badlogic/gdx/physics/box2d/Shape;
    :cond_9
    const-string v7, "friction"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    const-string v7, "friction"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    double-to-float v7, v7

    iput v7, v3, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->friction:F

    .line 106
    :cond_a
    const-string v7, "restitution"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v7, "restitution"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    double-to-float v7, v7

    iput v7, v3, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->restitution:F

    .line 107
    :cond_b
    const-string v7, "density"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v7, "density"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    .end local v6           #jsonFixture:Lorg/json/JSONObject;
    double-to-float v6, v6

    iput v6, v3, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->density:F

    .line 109
    :cond_c
    iput-object v2, v3, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->shape:Lcom/badlogic/gdx/physics/box2d/Shape;

    .line 111
    invoke-virtual {v9, v2, v3}, Lcom/stickycoding/rokon/PhysicsDef;->add(Lcom/badlogic/gdx/physics/box2d/Shape;Lcom/badlogic/gdx/physics/box2d/FixtureDef;)V

    .line 78
    add-int/lit8 v2, v5, 0x1

    .end local v5           #i:I
    .local v2, i:I
    move v5, v2

    .end local v2           #i:I
    .restart local v5       #i:I
    goto/16 :goto_3

    .line 99
    .local v2, j:I
    .restart local v6       #jsonFixture:Lorg/json/JSONObject;
    .restart local v7       #jsonY:Lorg/json/JSONArray;
    .restart local v8       #jsonX:Lorg/json/JSONArray;
    .restart local v10       #polyShape:Lcom/badlogic/gdx/physics/box2d/PolygonShape;
    .restart local v11       #shape:Lcom/badlogic/gdx/physics/box2d/Shape;
    .restart local v12       #vertices:[Lcom/badlogic/gdx/math/Vector2;
    :cond_d
    new-instance v13, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v14

    double-to-float v14, v14

    invoke-virtual/range {p1 .. p1}, Lcom/stickycoding/rokon/DimensionalObject;->getWidth()F

    move-result v15

    mul-float/2addr v14, v15

    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v15

    double-to-float v15, v15

    invoke-virtual/range {p1 .. p1}, Lcom/stickycoding/rokon/DimensionalObject;->getHeight()F

    move-result v16

    mul-float v15, v15, v16

    invoke-direct {v13, v14, v15}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v13, v12, v2

    .line 100
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "added vertex x="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v14, v12, v2

    iget v14, v14, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " y="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, v12, v2

    iget v14, v14, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/stickycoding/rokon/Debug;->print(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 98
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4
.end method
