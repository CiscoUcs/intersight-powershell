/* 
 * Intersight REST API
 *
 * This is Intersight REST API 
 *
 * OpenAPI spec version: 1.0.9-228
 * 
 * Generated by: https://github.com/swagger-api/swagger-codegen.git
 */

using System;
using System.Linq;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Runtime.Serialization;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using System.ComponentModel.DataAnnotations;
using SwaggerDateConverter = intersight.Client.SwaggerDateConverter;

namespace intersight.Model
{
    /// <summary>
    /// This trigger sends a MO change notification for a single MO. It does so by reading the MO from the database, using &#39;motype&#39; and &#39;moid&#39;, and issuing a change notification with modification type &#39;modified&#39;. 
    /// </summary>
    [DataContract]
    public partial class DevopsNotificationTrigger :  IEquatable<DevopsNotificationTrigger>, IValidatableObject
    {
        /// <summary>
        /// Indicates the type of change notification.  
        /// </summary>
        /// <value>Indicates the type of change notification.  </value>
        [JsonConverter(typeof(StringEnumConverter))]
        public enum ModificationTypeEnum
        {
            
            /// <summary>
            /// Enum Update for "Update"
            /// </summary>
            [EnumMember(Value = "Update")]
            Update,
            
            /// <summary>
            /// Enum Create for "Create"
            /// </summary>
            [EnumMember(Value = "Create")]
            Create,
            
            /// <summary>
            /// Enum Read for "Read"
            /// </summary>
            [EnumMember(Value = "Read")]
            Read,
            
            /// <summary>
            /// Enum Delete for "Delete"
            /// </summary>
            [EnumMember(Value = "Delete")]
            Delete
        }

        /// <summary>
        /// In some scenarios it is necessary for change notifications to be processed in SystemContext. For example, when a device is claimed or unclaimed the notification must execute in SystemContext in order to move MOs related to the device between accounts. 
        /// </summary>
        /// <value>In some scenarios it is necessary for change notifications to be processed in SystemContext. For example, when a device is claimed or unclaimed the notification must execute in SystemContext in order to move MOs related to the device between accounts. </value>
        [JsonConverter(typeof(StringEnumConverter))]
        public enum SecurityContextTypeEnum
        {
            
            /// <summary>
            /// Enum AccountContext for "AccountContext"
            /// </summary>
            [EnumMember(Value = "AccountContext")]
            AccountContext,
            
            /// <summary>
            /// Enum SystemContext for "SystemContext"
            /// </summary>
            [EnumMember(Value = "SystemContext")]
            SystemContext,
            
            /// <summary>
            /// Enum DeviceContext for "DeviceContext"
            /// </summary>
            [EnumMember(Value = "DeviceContext")]
            DeviceContext
        }

        /// <summary>
        /// Indicates the type of change notification.  
        /// </summary>
        /// <value>Indicates the type of change notification.  </value>
        [DataMember(Name="ModificationType", EmitDefaultValue=false)]
        public ModificationTypeEnum? ModificationType { get; set; }
        /// <summary>
        /// In some scenarios it is necessary for change notifications to be processed in SystemContext. For example, when a device is claimed or unclaimed the notification must execute in SystemContext in order to move MOs related to the device between accounts. 
        /// </summary>
        /// <value>In some scenarios it is necessary for change notifications to be processed in SystemContext. For example, when a device is claimed or unclaimed the notification must execute in SystemContext in order to move MOs related to the device between accounts. </value>
        [DataMember(Name="SecurityContextType", EmitDefaultValue=false)]
        public SecurityContextTypeEnum? SecurityContextType { get; set; }
        /// <summary>
        /// Initializes a new instance of the <see cref="DevopsNotificationTrigger" /> class.
        /// </summary>
        /// <param name="Account">The Moid of the Account to which the MO identified by the &#39;moid&#39; field belonged. This field is mandatory when modificationType is Delete and is ignored for other values of modificationType. .</param>
        /// <param name="DomainGroup">The Moid of the DomainGroup to which the MO identified by the &#39;moid&#39; field belonged. This field is mandatory when modificationType is Delete and is ignored for other values of modificationType. .</param>
        /// <param name="MoType">The type of the MO such as iam.Account.  .</param>
        /// <param name="ModificationType">Indicates the type of change notification.   (default to ModificationTypeEnum.Update).</param>
        /// <param name="Moid">The Moid of the MO.  .</param>
        /// <param name="SecurityContextSubject">A securityContextSubject must be specified when the securityContextType is AccountContext or DeviceContext. The field is the Moid of the respective iam.Account of asset.DeviceRegistration. .</param>
        /// <param name="SecurityContextType">In some scenarios it is necessary for change notifications to be processed in SystemContext. For example, when a device is claimed or unclaimed the notification must execute in SystemContext in order to move MOs related to the device between accounts.  (default to SecurityContextTypeEnum.AccountContext).</param>
        public DevopsNotificationTrigger(string Account = default(string), string DomainGroup = default(string), string MoType = default(string), ModificationTypeEnum? ModificationType = ModificationTypeEnum.Update, string Moid = default(string), string SecurityContextSubject = default(string), SecurityContextTypeEnum? SecurityContextType = SecurityContextTypeEnum.AccountContext)
        {
            this.Account = Account;
            this.DomainGroup = DomainGroup;
            this.MoType = MoType;
            // use default value if no "ModificationType" provided
            if (ModificationType == null)
            {
                this.ModificationType = ModificationTypeEnum.Update;
            }
            else
            {
                this.ModificationType = ModificationType;
            }
            this.Moid = Moid;
            this.SecurityContextSubject = SecurityContextSubject;
            // use default value if no "SecurityContextType" provided
            if (SecurityContextType == null)
            {
                this.SecurityContextType = SecurityContextTypeEnum.AccountContext;
            }
            else
            {
                this.SecurityContextType = SecurityContextType;
            }
        }
        
        /// <summary>
        /// The Moid of the Account to which the MO identified by the &#39;moid&#39; field belonged. This field is mandatory when modificationType is Delete and is ignored for other values of modificationType. 
        /// </summary>
        /// <value>The Moid of the Account to which the MO identified by the &#39;moid&#39; field belonged. This field is mandatory when modificationType is Delete and is ignored for other values of modificationType. </value>
        [DataMember(Name="Account", EmitDefaultValue=false)]
        public string Account { get; set; }

        /// <summary>
        /// The Moid of the DomainGroup to which the MO identified by the &#39;moid&#39; field belonged. This field is mandatory when modificationType is Delete and is ignored for other values of modificationType. 
        /// </summary>
        /// <value>The Moid of the DomainGroup to which the MO identified by the &#39;moid&#39; field belonged. This field is mandatory when modificationType is Delete and is ignored for other values of modificationType. </value>
        [DataMember(Name="DomainGroup", EmitDefaultValue=false)]
        public string DomainGroup { get; set; }

        /// <summary>
        /// The type of the MO such as iam.Account.  
        /// </summary>
        /// <value>The type of the MO such as iam.Account.  </value>
        [DataMember(Name="MoType", EmitDefaultValue=false)]
        public string MoType { get; set; }


        /// <summary>
        /// The Moid of the MO.  
        /// </summary>
        /// <value>The Moid of the MO.  </value>
        [DataMember(Name="Moid", EmitDefaultValue=false)]
        public string Moid { get; set; }

        /// <summary>
        /// A securityContextSubject must be specified when the securityContextType is AccountContext or DeviceContext. The field is the Moid of the respective iam.Account of asset.DeviceRegistration. 
        /// </summary>
        /// <value>A securityContextSubject must be specified when the securityContextType is AccountContext or DeviceContext. The field is the Moid of the respective iam.Account of asset.DeviceRegistration. </value>
        [DataMember(Name="SecurityContextSubject", EmitDefaultValue=false)]
        public string SecurityContextSubject { get; set; }


        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class DevopsNotificationTrigger {\n");
            sb.Append("  Account: ").Append(Account).Append("\n");
            sb.Append("  DomainGroup: ").Append(DomainGroup).Append("\n");
            sb.Append("  MoType: ").Append(MoType).Append("\n");
            sb.Append("  ModificationType: ").Append(ModificationType).Append("\n");
            sb.Append("  Moid: ").Append(Moid).Append("\n");
            sb.Append("  SecurityContextSubject: ").Append(SecurityContextSubject).Append("\n");
            sb.Append("  SecurityContextType: ").Append(SecurityContextType).Append("\n");
            sb.Append("}\n");
            return sb.ToString();
        }
  
        /// <summary>
        /// Returns the JSON string presentation of the object
        /// </summary>
        /// <returns>JSON string presentation of the object</returns>
        public string ToJson()
        {
            return JsonConvert.SerializeObject(this, Formatting.Indented);
        }

        /// <summary>
        /// Returns true if objects are equal
        /// </summary>
        /// <param name="obj">Object to be compared</param>
        /// <returns>Boolean</returns>
        public override bool Equals(object obj)
        {
            // credit: http://stackoverflow.com/a/10454552/677735
            return this.Equals(obj as DevopsNotificationTrigger);
        }

        /// <summary>
        /// Returns true if DevopsNotificationTrigger instances are equal
        /// </summary>
        /// <param name="other">Instance of DevopsNotificationTrigger to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(DevopsNotificationTrigger other)
        {
            // credit: http://stackoverflow.com/a/10454552/677735
            if (other == null)
                return false;

            return 
                (
                    this.Account == other.Account ||
                    this.Account != null &&
                    this.Account.Equals(other.Account)
                ) && 
                (
                    this.DomainGroup == other.DomainGroup ||
                    this.DomainGroup != null &&
                    this.DomainGroup.Equals(other.DomainGroup)
                ) && 
                (
                    this.MoType == other.MoType ||
                    this.MoType != null &&
                    this.MoType.Equals(other.MoType)
                ) && 
                (
                    this.ModificationType == other.ModificationType ||
                    this.ModificationType != null &&
                    this.ModificationType.Equals(other.ModificationType)
                ) && 
                (
                    this.Moid == other.Moid ||
                    this.Moid != null &&
                    this.Moid.Equals(other.Moid)
                ) && 
                (
                    this.SecurityContextSubject == other.SecurityContextSubject ||
                    this.SecurityContextSubject != null &&
                    this.SecurityContextSubject.Equals(other.SecurityContextSubject)
                ) && 
                (
                    this.SecurityContextType == other.SecurityContextType ||
                    this.SecurityContextType != null &&
                    this.SecurityContextType.Equals(other.SecurityContextType)
                );
        }

        /// <summary>
        /// Gets the hash code
        /// </summary>
        /// <returns>Hash code</returns>
        public override int GetHashCode()
        {
            // credit: http://stackoverflow.com/a/263416/677735
            unchecked // Overflow is fine, just wrap
            {
                int hash = 41;
                // Suitable nullity checks etc, of course :)
                if (this.Account != null)
                    hash = hash * 59 + this.Account.GetHashCode();
                if (this.DomainGroup != null)
                    hash = hash * 59 + this.DomainGroup.GetHashCode();
                if (this.MoType != null)
                    hash = hash * 59 + this.MoType.GetHashCode();
                if (this.ModificationType != null)
                    hash = hash * 59 + this.ModificationType.GetHashCode();
                if (this.Moid != null)
                    hash = hash * 59 + this.Moid.GetHashCode();
                if (this.SecurityContextSubject != null)
                    hash = hash * 59 + this.SecurityContextSubject.GetHashCode();
                if (this.SecurityContextType != null)
                    hash = hash * 59 + this.SecurityContextType.GetHashCode();
                return hash;
            }
        }

        /// <summary>
        /// To validate all properties of the instance
        /// </summary>
        /// <param name="validationContext">Validation context</param>
        /// <returns>Validation Result</returns>
        IEnumerable<System.ComponentModel.DataAnnotations.ValidationResult> IValidatableObject.Validate(ValidationContext validationContext)
        {
            yield break;
        }
    }

}
