.class public Lcom/mswiniuch/FiveLines2/settings/APsettings;
.super Ljava/lang/Object;
.source "APsettings.java"


# instance fields
.field public data:Lorg/json/JSONObject;

.field public save_directory:Ljava/io/File;

.field public settings_file_name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/settings/APsettings;->data:Lorg/json/JSONObject;

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".json"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mswiniuch/FiveLines2/settings/APsettings;->settings_file_name:Ljava/lang/String;

    .line 29
    invoke-virtual {p2, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/mswiniuch/FiveLines2/settings/APsettings;->save_directory:Ljava/io/File;

    .line 32
    invoke-virtual {p0}, Lcom/mswiniuch/FiveLines2/settings/APsettings;->load()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;I)I
    .locals 0

    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/mswiniuch/FiveLines2/settings/APsettings;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 78
    invoke-virtual {p0, p1, v0}, Lcom/mswiniuch/FiveLines2/settings/APsettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 81
    invoke-virtual {p0, p1, p2}, Lcom/mswiniuch/FiveLines2/settings/APsettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Z)Z
    .locals 0

    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/mswiniuch/FiveLines2/settings/APsettings;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/settings/APsettings;->data:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move p1, p2

    :goto_0
    return p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/settings/APsettings;->data:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move p1, p2

    :goto_0
    return p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/settings/APsettings;->data:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public load()V
    .locals 4

    .line 36
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mswiniuch/FiveLines2/settings/APsettings;->save_directory:Ljava/io/File;

    iget-object v2, p0, Lcom/mswiniuch/FiveLines2/settings/APsettings;->settings_file_name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 43
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 50
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/settings/APsettings;->data:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 54
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/settings/APsettings;->data:Lorg/json/JSONObject;

    if-nez v0, :cond_2

    .line 55
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/settings/APsettings;->data:Lorg/json/JSONObject;

    goto :goto_1

    .line 61
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/mswiniuch/FiveLines2/settings/APsettings;->data:Lorg/json/JSONObject;

    :cond_2
    :goto_1
    return-void
.end method

.method public save()V
    .locals 3

    .line 66
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mswiniuch/FiveLines2/settings/APsettings;->save_directory:Ljava/io/File;

    iget-object v2, p0, Lcom/mswiniuch/FiveLines2/settings/APsettings;->settings_file_name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 69
    iget-object v0, p0, Lcom/mswiniuch/FiveLines2/settings/APsettings;->data:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public set(Ljava/lang/String;I)Z
    .locals 0

    .line 126
    invoke-virtual {p0, p1, p2}, Lcom/mswiniuch/FiveLines2/settings/APsettings;->setInt(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 123
    invoke-virtual {p0, p1, p2}, Lcom/mswiniuch/FiveLines2/settings/APsettings;->setString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public set(Ljava/lang/String;Z)Z
    .locals 0

    .line 129
    invoke-virtual {p0, p1, p2}, Lcom/mswiniuch/FiveLines2/settings/APsettings;->setBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public setBoolean(Ljava/lang/String;Z)Z
    .locals 2

    const/4 v0, 0x1

    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/mswiniuch/FiveLines2/settings/APsettings;->data:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, p2, :cond_0

    return v0

    .line 180
    :catch_0
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/mswiniuch/FiveLines2/settings/APsettings;->data:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 181
    invoke-virtual {p0}, Lcom/mswiniuch/FiveLines2/settings/APsettings;->save()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    :catch_1
    const/4 p1, 0x0

    return p1
.end method

.method public setInt(Ljava/lang/String;I)Z
    .locals 2

    const/4 v0, 0x1

    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/mswiniuch/FiveLines2/settings/APsettings;->data:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, p2, :cond_0

    return v0

    .line 161
    :catch_0
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/mswiniuch/FiveLines2/settings/APsettings;->data:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 162
    invoke-virtual {p0}, Lcom/mswiniuch/FiveLines2/settings/APsettings;->save()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    :catch_1
    const/4 p1, 0x0

    return p1
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/mswiniuch/FiveLines2/settings/APsettings;->data:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return v0

    .line 142
    :catch_0
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/mswiniuch/FiveLines2/settings/APsettings;->data:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    invoke-virtual {p0}, Lcom/mswiniuch/FiveLines2/settings/APsettings;->save()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    :catch_1
    const/4 p1, 0x0

    return p1
.end method
