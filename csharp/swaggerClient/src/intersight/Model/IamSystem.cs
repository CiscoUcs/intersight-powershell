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
    /// IamSystem
    /// </summary>
    [DataContract]
    public partial class IamSystem :  IEquatable<IamSystem>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="IamSystem" /> class.
        /// </summary>
        /// <param name="Ancestors">Ancestors is an array containing the MO references of the ancestors in the object containment hierarchy. .</param>
        /// <param name="Moid">A unique identifier of this Managed Object instance.  .</param>
        /// <param name="Owners">An array of owners which represent effective ownership of this object.   .</param>
        /// <param name="Parent">The direct ancestor of this managed object in the containment hierarchy. .</param>
        /// <param name="Tags">An array of tags, which allow to add key, value meta-data to managed objects.  .</param>
        /// <param name="VersionContext">The versioning info for this managed object   .</param>
        /// <param name="EndPointPrivileges">Privileges defined in end point devices such as UCSFI, IMC, HX managed by Intersight. These privileges are assigned to Intersight users using end point roles to perform operations such as GUI/CLI cross launch. .</param>
        /// <param name="EndPointRoles">Roles defined in end point devices such as UCSFI, IMC, HX managed by Intersight. These roles are assigned to Intersight users to perform end point operations such as GUI/CLI cross launch. .</param>
        /// <param name="Idp">Default Cisco IdP used for SAML authentication. .</param>
        /// <param name="PrivilegeSets">Privilege set is a collection of privileges. Privilege sets are assigned to a user using roles. .</param>
        /// <param name="Privileges">Privilege represents an action which can be performed in Intersight such as creating server profile, deleting a user etc. Privileges are assigned to a user using privilege sets and roles. .</param>
        /// <param name="Roles">Default roles such as Account Administrator and Read-Only roles. A role is a collection of privilege sets that are assigned to a user using a permission object. .</param>
        /// <param name="ServiceProvider">SAML service provider which holds the Intersight Service Provider&#39;s SAML entity ID and metadata to integrate with the IdPs. .</param>
        public IamSystem(List<MoBaseMoRef> Ancestors = default(List<MoBaseMoRef>), string Moid = default(string), List<string> Owners = default(List<string>), MoBaseMoRef Parent = default(MoBaseMoRef), List<MoTag> Tags = default(List<MoTag>), MoVersionContext VersionContext = default(MoVersionContext), List<IamEndPointPrivilegeRef> EndPointPrivileges = default(List<IamEndPointPrivilegeRef>), List<IamEndPointRoleRef> EndPointRoles = default(List<IamEndPointRoleRef>), IamIdpRef Idp = default(IamIdpRef), List<IamPrivilegeSetRef> PrivilegeSets = default(List<IamPrivilegeSetRef>), List<IamPrivilegeRef> Privileges = default(List<IamPrivilegeRef>), List<IamRoleRef> Roles = default(List<IamRoleRef>), IamServiceProviderRef ServiceProvider = default(IamServiceProviderRef))
        {
            this.Ancestors = Ancestors;
            this.Moid = Moid;
            this.Owners = Owners;
            this.Parent = Parent;
            this.Tags = Tags;
            this.VersionContext = VersionContext;
            this.EndPointPrivileges = EndPointPrivileges;
            this.EndPointRoles = EndPointRoles;
            this.Idp = Idp;
            this.PrivilegeSets = PrivilegeSets;
            this.Privileges = Privileges;
            this.Roles = Roles;
            this.ServiceProvider = ServiceProvider;
        }
        
        /// <summary>
        /// The Account ID for this managed object.  
        /// </summary>
        /// <value>The Account ID for this managed object.  </value>
        [DataMember(Name="AccountMoid", EmitDefaultValue=false)]
        public string AccountMoid { get; private set; }

        /// <summary>
        /// Ancestors is an array containing the MO references of the ancestors in the object containment hierarchy. 
        /// </summary>
        /// <value>Ancestors is an array containing the MO references of the ancestors in the object containment hierarchy. </value>
        [DataMember(Name="Ancestors", EmitDefaultValue=false)]
        public List<MoBaseMoRef> Ancestors { get; set; }

        /// <summary>
        /// The time when this managed object was created.  
        /// </summary>
        /// <value>The time when this managed object was created.  </value>
        [DataMember(Name="CreateTime", EmitDefaultValue=false)]
        public DateTime? CreateTime { get; private set; }

        /// <summary>
        /// The time when this managed object was last modified.  
        /// </summary>
        /// <value>The time when this managed object was last modified.  </value>
        [DataMember(Name="ModTime", EmitDefaultValue=false)]
        public DateTime? ModTime { get; private set; }

        /// <summary>
        /// A unique identifier of this Managed Object instance.  
        /// </summary>
        /// <value>A unique identifier of this Managed Object instance.  </value>
        [DataMember(Name="Moid", EmitDefaultValue=false)]
        public string Moid { get; set; }

        /// <summary>
        /// The fully-qualified type of this managed object, e.g. the class name.  
        /// </summary>
        /// <value>The fully-qualified type of this managed object, e.g. the class name.  </value>
        [DataMember(Name="ObjectType", EmitDefaultValue=false)]
        public string ObjectType { get; private set; }

        /// <summary>
        /// An array of owners which represent effective ownership of this object.   
        /// </summary>
        /// <value>An array of owners which represent effective ownership of this object.   </value>
        [DataMember(Name="Owners", EmitDefaultValue=false)]
        public List<string> Owners { get; set; }

        /// <summary>
        /// The direct ancestor of this managed object in the containment hierarchy. 
        /// </summary>
        /// <value>The direct ancestor of this managed object in the containment hierarchy. </value>
        [DataMember(Name="Parent", EmitDefaultValue=false)]
        public MoBaseMoRef Parent { get; set; }

        /// <summary>
        /// An array of tags, which allow to add key, value meta-data to managed objects.  
        /// </summary>
        /// <value>An array of tags, which allow to add key, value meta-data to managed objects.  </value>
        [DataMember(Name="Tags", EmitDefaultValue=false)]
        public List<MoTag> Tags { get; set; }

        /// <summary>
        /// The versioning info for this managed object   
        /// </summary>
        /// <value>The versioning info for this managed object   </value>
        [DataMember(Name="VersionContext", EmitDefaultValue=false)]
        public MoVersionContext VersionContext { get; set; }

        /// <summary>
        /// Privileges defined in end point devices such as UCSFI, IMC, HX managed by Intersight. These privileges are assigned to Intersight users using end point roles to perform operations such as GUI/CLI cross launch. 
        /// </summary>
        /// <value>Privileges defined in end point devices such as UCSFI, IMC, HX managed by Intersight. These privileges are assigned to Intersight users using end point roles to perform operations such as GUI/CLI cross launch. </value>
        [DataMember(Name="EndPointPrivileges", EmitDefaultValue=false)]
        public List<IamEndPointPrivilegeRef> EndPointPrivileges { get; set; }

        /// <summary>
        /// Roles defined in end point devices such as UCSFI, IMC, HX managed by Intersight. These roles are assigned to Intersight users to perform end point operations such as GUI/CLI cross launch. 
        /// </summary>
        /// <value>Roles defined in end point devices such as UCSFI, IMC, HX managed by Intersight. These roles are assigned to Intersight users to perform end point operations such as GUI/CLI cross launch. </value>
        [DataMember(Name="EndPointRoles", EmitDefaultValue=false)]
        public List<IamEndPointRoleRef> EndPointRoles { get; set; }

        /// <summary>
        /// Default Cisco IdP used for SAML authentication. 
        /// </summary>
        /// <value>Default Cisco IdP used for SAML authentication. </value>
        [DataMember(Name="Idp", EmitDefaultValue=false)]
        public IamIdpRef Idp { get; set; }

        /// <summary>
        /// Privilege set is a collection of privileges. Privilege sets are assigned to a user using roles. 
        /// </summary>
        /// <value>Privilege set is a collection of privileges. Privilege sets are assigned to a user using roles. </value>
        [DataMember(Name="PrivilegeSets", EmitDefaultValue=false)]
        public List<IamPrivilegeSetRef> PrivilegeSets { get; set; }

        /// <summary>
        /// Privilege represents an action which can be performed in Intersight such as creating server profile, deleting a user etc. Privileges are assigned to a user using privilege sets and roles. 
        /// </summary>
        /// <value>Privilege represents an action which can be performed in Intersight such as creating server profile, deleting a user etc. Privileges are assigned to a user using privilege sets and roles. </value>
        [DataMember(Name="Privileges", EmitDefaultValue=false)]
        public List<IamPrivilegeRef> Privileges { get; set; }

        /// <summary>
        /// Default roles such as Account Administrator and Read-Only roles. A role is a collection of privilege sets that are assigned to a user using a permission object. 
        /// </summary>
        /// <value>Default roles such as Account Administrator and Read-Only roles. A role is a collection of privilege sets that are assigned to a user using a permission object. </value>
        [DataMember(Name="Roles", EmitDefaultValue=false)]
        public List<IamRoleRef> Roles { get; set; }

        /// <summary>
        /// SAML service provider which holds the Intersight Service Provider&#39;s SAML entity ID and metadata to integrate with the IdPs. 
        /// </summary>
        /// <value>SAML service provider which holds the Intersight Service Provider&#39;s SAML entity ID and metadata to integrate with the IdPs. </value>
        [DataMember(Name="ServiceProvider", EmitDefaultValue=false)]
        public IamServiceProviderRef ServiceProvider { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class IamSystem {\n");
            sb.Append("  AccountMoid: ").Append(AccountMoid).Append("\n");
            sb.Append("  Ancestors: ").Append(Ancestors).Append("\n");
            sb.Append("  CreateTime: ").Append(CreateTime).Append("\n");
            sb.Append("  ModTime: ").Append(ModTime).Append("\n");
            sb.Append("  Moid: ").Append(Moid).Append("\n");
            sb.Append("  ObjectType: ").Append(ObjectType).Append("\n");
            sb.Append("  Owners: ").Append(Owners).Append("\n");
            sb.Append("  Parent: ").Append(Parent).Append("\n");
            sb.Append("  Tags: ").Append(Tags).Append("\n");
            sb.Append("  VersionContext: ").Append(VersionContext).Append("\n");
            sb.Append("  EndPointPrivileges: ").Append(EndPointPrivileges).Append("\n");
            sb.Append("  EndPointRoles: ").Append(EndPointRoles).Append("\n");
            sb.Append("  Idp: ").Append(Idp).Append("\n");
            sb.Append("  PrivilegeSets: ").Append(PrivilegeSets).Append("\n");
            sb.Append("  Privileges: ").Append(Privileges).Append("\n");
            sb.Append("  Roles: ").Append(Roles).Append("\n");
            sb.Append("  ServiceProvider: ").Append(ServiceProvider).Append("\n");
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
            return this.Equals(obj as IamSystem);
        }

        /// <summary>
        /// Returns true if IamSystem instances are equal
        /// </summary>
        /// <param name="other">Instance of IamSystem to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(IamSystem other)
        {
            // credit: http://stackoverflow.com/a/10454552/677735
            if (other == null)
                return false;

            return 
                (
                    this.AccountMoid == other.AccountMoid ||
                    this.AccountMoid != null &&
                    this.AccountMoid.Equals(other.AccountMoid)
                ) && 
                (
                    this.Ancestors == other.Ancestors ||
                    this.Ancestors != null &&
                    this.Ancestors.SequenceEqual(other.Ancestors)
                ) && 
                (
                    this.CreateTime == other.CreateTime ||
                    this.CreateTime != null &&
                    this.CreateTime.Equals(other.CreateTime)
                ) && 
                (
                    this.ModTime == other.ModTime ||
                    this.ModTime != null &&
                    this.ModTime.Equals(other.ModTime)
                ) && 
                (
                    this.Moid == other.Moid ||
                    this.Moid != null &&
                    this.Moid.Equals(other.Moid)
                ) && 
                (
                    this.ObjectType == other.ObjectType ||
                    this.ObjectType != null &&
                    this.ObjectType.Equals(other.ObjectType)
                ) && 
                (
                    this.Owners == other.Owners ||
                    this.Owners != null &&
                    this.Owners.SequenceEqual(other.Owners)
                ) && 
                (
                    this.Parent == other.Parent ||
                    this.Parent != null &&
                    this.Parent.Equals(other.Parent)
                ) && 
                (
                    this.Tags == other.Tags ||
                    this.Tags != null &&
                    this.Tags.SequenceEqual(other.Tags)
                ) && 
                (
                    this.VersionContext == other.VersionContext ||
                    this.VersionContext != null &&
                    this.VersionContext.Equals(other.VersionContext)
                ) && 
                (
                    this.EndPointPrivileges == other.EndPointPrivileges ||
                    this.EndPointPrivileges != null &&
                    this.EndPointPrivileges.SequenceEqual(other.EndPointPrivileges)
                ) && 
                (
                    this.EndPointRoles == other.EndPointRoles ||
                    this.EndPointRoles != null &&
                    this.EndPointRoles.SequenceEqual(other.EndPointRoles)
                ) && 
                (
                    this.Idp == other.Idp ||
                    this.Idp != null &&
                    this.Idp.Equals(other.Idp)
                ) && 
                (
                    this.PrivilegeSets == other.PrivilegeSets ||
                    this.PrivilegeSets != null &&
                    this.PrivilegeSets.SequenceEqual(other.PrivilegeSets)
                ) && 
                (
                    this.Privileges == other.Privileges ||
                    this.Privileges != null &&
                    this.Privileges.SequenceEqual(other.Privileges)
                ) && 
                (
                    this.Roles == other.Roles ||
                    this.Roles != null &&
                    this.Roles.SequenceEqual(other.Roles)
                ) && 
                (
                    this.ServiceProvider == other.ServiceProvider ||
                    this.ServiceProvider != null &&
                    this.ServiceProvider.Equals(other.ServiceProvider)
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
                if (this.AccountMoid != null)
                    hash = hash * 59 + this.AccountMoid.GetHashCode();
                if (this.Ancestors != null)
                    hash = hash * 59 + this.Ancestors.GetHashCode();
                if (this.CreateTime != null)
                    hash = hash * 59 + this.CreateTime.GetHashCode();
                if (this.ModTime != null)
                    hash = hash * 59 + this.ModTime.GetHashCode();
                if (this.Moid != null)
                    hash = hash * 59 + this.Moid.GetHashCode();
                if (this.ObjectType != null)
                    hash = hash * 59 + this.ObjectType.GetHashCode();
                if (this.Owners != null)
                    hash = hash * 59 + this.Owners.GetHashCode();
                if (this.Parent != null)
                    hash = hash * 59 + this.Parent.GetHashCode();
                if (this.Tags != null)
                    hash = hash * 59 + this.Tags.GetHashCode();
                if (this.VersionContext != null)
                    hash = hash * 59 + this.VersionContext.GetHashCode();
                if (this.EndPointPrivileges != null)
                    hash = hash * 59 + this.EndPointPrivileges.GetHashCode();
                if (this.EndPointRoles != null)
                    hash = hash * 59 + this.EndPointRoles.GetHashCode();
                if (this.Idp != null)
                    hash = hash * 59 + this.Idp.GetHashCode();
                if (this.PrivilegeSets != null)
                    hash = hash * 59 + this.PrivilegeSets.GetHashCode();
                if (this.Privileges != null)
                    hash = hash * 59 + this.Privileges.GetHashCode();
                if (this.Roles != null)
                    hash = hash * 59 + this.Roles.GetHashCode();
                if (this.ServiceProvider != null)
                    hash = hash * 59 + this.ServiceProvider.GetHashCode();
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
