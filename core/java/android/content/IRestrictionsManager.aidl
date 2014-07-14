/*
 * Copyright (C) 2014 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package android.content;

import android.os.Bundle;
import android.content.IPermissionResponseCallback;

/**
 * Interface used by the RestrictionsManager
 * @hide
 */
interface IRestrictionsManager {
    Bundle getApplicationRestrictions(in String packageName);
    boolean hasRestrictionsProvider();
    void requestPermission(in String packageName, in String requestTemplate, in Bundle requestData);
    void notifyPermissionResponse(in String packageName, in Bundle response);
    void getPermissionResponse(in String packageName, in String requestId,
            in IPermissionResponseCallback callback);
}
