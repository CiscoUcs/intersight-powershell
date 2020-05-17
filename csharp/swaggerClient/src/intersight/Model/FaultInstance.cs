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
    /// Represents an anomaly on an endpoint 
    /// </summary>
    [DataContract]
    public partial class FaultInstance :  IEquatable<FaultInstance>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="FaultInstance" /> class.
        /// </summary>
        /// <param name="Ancestors">Ancestors is an array containing the MO references of the ancestors in the object containment hierarchy. .</param>
        /// <param name="Moid">A unique identifier of this Managed Object instance.  .</param>
        /// <param name="Owners">An array of owners which represent effective ownership of this object.   .</param>
        /// <param name="Parent">The direct ancestor of this managed object in the containment hierarchy. .</param>
        /// <param name="Tags">An array of tags, which allow to add key, value meta-data to managed objects.  .</param>
        /// <param name="VersionContext">The versioning info for this managed object   .</param>
        /// <param name="RegisteredDevice">RegisteredDevice.</param>
        public FaultInstance(List<MoBaseMoRef> Ancestors = default(List<MoBaseMoRef>), string Moid = default(string), List<string> Owners = default(List<string>), MoBaseMoRef Parent = default(MoBaseMoRef), List<MoTag> Tags = default(List<MoTag>), MoVersionContext VersionContext = default(MoVersionContext), AssetDeviceRegistrationRef RegisteredDevice = default(AssetDeviceRegistrationRef))
        {
            this.Ancestors = Ancestors;
            this.Moid = Moid;
            this.Owners = Owners;
            this.Parent = Parent;
            this.Tags = Tags;
            this.VersionContext = VersionContext;
            this.RegisteredDevice = RegisteredDevice;
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
        /// Gets or Sets DeviceMoId
        /// </summary>
        [DataMember(Name="DeviceMoId", EmitDefaultValue=false)]
        public string DeviceMoId { get; private set; }

        /// <summary>
        /// Gets or Sets Dn
        /// </summary>
        [DataMember(Name="Dn", EmitDefaultValue=false)]
        public string Dn { get; private set; }

        /// <summary>
        /// Gets or Sets Rn
        /// </summary>
        [DataMember(Name="Rn", EmitDefaultValue=false)]
        public string Rn { get; private set; }

        /// <summary>
        /// Gets or Sets Acknowledged
        /// </summary>
        [DataMember(Name="Acknowledged", EmitDefaultValue=false)]
        public string Acknowledged { get; private set; }

        /// <summary>
        /// Gets or Sets AffectedDn
        /// </summary>
        [DataMember(Name="AffectedDn", EmitDefaultValue=false)]
        public string AffectedDn { get; private set; }

        /// <summary>
        /// Gets or Sets AffectedMoId
        /// </summary>
        [DataMember(Name="AffectedMoId", EmitDefaultValue=false)]
        public string AffectedMoId { get; private set; }

        /// <summary>
        /// Gets or Sets AffectedMoType
        /// </summary>
        [DataMember(Name="AffectedMoType", EmitDefaultValue=false)]
        public string AffectedMoType { get; private set; }

        /// <summary>
        /// Gets or Sets AncestorMoId
        /// </summary>
        [DataMember(Name="AncestorMoId", EmitDefaultValue=false)]
        public string AncestorMoId { get; private set; }

        /// <summary>
        /// Gets or Sets AncestorMoType
        /// </summary>
        [DataMember(Name="AncestorMoType", EmitDefaultValue=false)]
        public string AncestorMoType { get; private set; }

        /// <summary>
        /// Gets or Sets Code
        /// </summary>
        [DataMember(Name="Code", EmitDefaultValue=false)]
        public string Code { get; private set; }

        /// <summary>
        /// Gets or Sets CreationTime
        /// </summary>
        [DataMember(Name="CreationTime", EmitDefaultValue=false)]
        public string CreationTime { get; private set; }

        /// <summary>
        /// Gets or Sets Description
        /// </summary>
        [DataMember(Name="Description", EmitDefaultValue=false)]
        public string Description { get; private set; }

        /// <summary>
        /// Gets or Sets LastTransitionTime
        /// </summary>
        [DataMember(Name="LastTransitionTime", EmitDefaultValue=false)]
        public string LastTransitionTime { get; private set; }

        /// <summary>
        /// Gets or Sets NumOccurrences
        /// </summary>
        [DataMember(Name="NumOccurrences", EmitDefaultValue=false)]
        public long? NumOccurrences { get; private set; }

        /// <summary>
        /// Gets or Sets OriginalSeverity
        /// </summary>
        [DataMember(Name="OriginalSeverity", EmitDefaultValue=false)]
        public string OriginalSeverity { get; private set; }

        /// <summary>
        /// Gets or Sets PreviousSeverity
        /// </summary>
        [DataMember(Name="PreviousSeverity", EmitDefaultValue=false)]
        public string PreviousSeverity { get; private set; }

        /// <summary>
        /// Gets or Sets RegisteredDevice
        /// </summary>
        [DataMember(Name="RegisteredDevice", EmitDefaultValue=false)]
        public AssetDeviceRegistrationRef RegisteredDevice { get; set; }

        /// <summary>
        /// Gets or Sets Rule
        /// </summary>
        [DataMember(Name="Rule", EmitDefaultValue=false)]
        public string Rule { get; private set; }

        /// <summary>
        /// Gets or Sets Severity
        /// </summary>
        [DataMember(Name="Severity", EmitDefaultValue=false)]
        public string Severity { get; private set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class FaultInstance {\n");
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
            sb.Append("  DeviceMoId: ").Append(DeviceMoId).Append("\n");
            sb.Append("  Dn: ").Append(Dn).Append("\n");
            sb.Append("  Rn: ").Append(Rn).Append("\n");
            sb.Append("  Acknowledged: ").Append(Acknowledged).Append("\n");
            sb.Append("  AffectedDn: ").Append(AffectedDn).Append("\n");
            sb.Append("  AffectedMoId: ").Append(AffectedMoId).Append("\n");
            sb.Append("  AffectedMoType: ").Append(AffectedMoType).Append("\n");
            sb.Append("  AncestorMoId: ").Append(AncestorMoId).Append("\n");
            sb.Append("  AncestorMoType: ").Append(AncestorMoType).Append("\n");
            sb.Append("  Code: ").Append(Code).Append("\n");
            sb.Append("  CreationTime: ").Append(CreationTime).Append("\n");
            sb.Append("  Description: ").Append(Description).Append("\n");
            sb.Append("  LastTransitionTime: ").Append(LastTransitionTime).Append("\n");
            sb.Append("  NumOccurrences: ").Append(NumOccurrences).Append("\n");
            sb.Append("  OriginalSeverity: ").Append(OriginalSeverity).Append("\n");
            sb.Append("  PreviousSeverity: ").Append(PreviousSeverity).Append("\n");
            sb.Append("  RegisteredDevice: ").Append(RegisteredDevice).Append("\n");
            sb.Append("  Rule: ").Append(Rule).Append("\n");
            sb.Append("  Severity: ").Append(Severity).Append("\n");
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
            return this.Equals(obj as FaultInstance);
        }

        /// <summary>
        /// Returns true if FaultInstance instances are equal
        /// </summary>
        /// <param name="other">Instance of FaultInstance to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(FaultInstance other)
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
                    this.DeviceMoId == other.DeviceMoId ||
                    this.DeviceMoId != null &&
                    this.DeviceMoId.Equals(other.DeviceMoId)
                ) && 
                (
                    this.Dn == other.Dn ||
                    this.Dn != null &&
                    this.Dn.Equals(other.Dn)
                ) && 
                (
                    this.Rn == other.Rn ||
                    this.Rn != null &&
                    this.Rn.Equals(other.Rn)
                ) && 
                (
                    this.Acknowledged == other.Acknowledged ||
                    this.Acknowledged != null &&
                    this.Acknowledged.Equals(other.Acknowledged)
                ) && 
                (
                    this.AffectedDn == other.AffectedDn ||
                    this.AffectedDn != null &&
                    this.AffectedDn.Equals(other.AffectedDn)
                ) && 
                (
                    this.AffectedMoId == other.AffectedMoId ||
                    this.AffectedMoId != null &&
                    this.AffectedMoId.Equals(other.AffectedMoId)
                ) && 
                (
                    this.AffectedMoType == other.AffectedMoType ||
                    this.AffectedMoType != null &&
                    this.AffectedMoType.Equals(other.AffectedMoType)
                ) && 
                (
                    this.AncestorMoId == other.AncestorMoId ||
                    this.AncestorMoId != null &&
                    this.AncestorMoId.Equals(other.AncestorMoId)
                ) && 
                (
                    this.AncestorMoType == other.AncestorMoType ||
                    this.AncestorMoType != null &&
                    this.AncestorMoType.Equals(other.AncestorMoType)
                ) && 
                (
                    this.Code == other.Code ||
                    this.Code != null &&
                    this.Code.Equals(other.Code)
                ) && 
                (
                    this.CreationTime == other.CreationTime ||
                    this.CreationTime != null &&
                    this.CreationTime.Equals(other.CreationTime)
                ) && 
                (
                    this.Description == other.Description ||
                    this.Description != null &&
                    this.Description.Equals(other.Description)
                ) && 
                (
                    this.LastTransitionTime == other.LastTransitionTime ||
                    this.LastTransitionTime != null &&
                    this.LastTransitionTime.Equals(other.LastTransitionTime)
                ) && 
                (
                    this.NumOccurrences == other.NumOccurrences ||
                    this.NumOccurrences != null &&
                    this.NumOccurrences.Equals(other.NumOccurrences)
                ) && 
                (
                    this.OriginalSeverity == other.OriginalSeverity ||
                    this.OriginalSeverity != null &&
                    this.OriginalSeverity.Equals(other.OriginalSeverity)
                ) && 
                (
                    this.PreviousSeverity == other.PreviousSeverity ||
                    this.PreviousSeverity != null &&
                    this.PreviousSeverity.Equals(other.PreviousSeverity)
                ) && 
                (
                    this.RegisteredDevice == other.RegisteredDevice ||
                    this.RegisteredDevice != null &&
                    this.RegisteredDevice.Equals(other.RegisteredDevice)
                ) && 
                (
                    this.Rule == other.Rule ||
                    this.Rule != null &&
                    this.Rule.Equals(other.Rule)
                ) && 
                (
                    this.Severity == other.Severity ||
                    this.Severity != null &&
                    this.Severity.Equals(other.Severity)
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
                if (this.DeviceMoId != null)
                    hash = hash * 59 + this.DeviceMoId.GetHashCode();
                if (this.Dn != null)
                    hash = hash * 59 + this.Dn.GetHashCode();
                if (this.Rn != null)
                    hash = hash * 59 + this.Rn.GetHashCode();
                if (this.Acknowledged != null)
                    hash = hash * 59 + this.Acknowledged.GetHashCode();
                if (this.AffectedDn != null)
                    hash = hash * 59 + this.AffectedDn.GetHashCode();
                if (this.AffectedMoId != null)
                    hash = hash * 59 + this.AffectedMoId.GetHashCode();
                if (this.AffectedMoType != null)
                    hash = hash * 59 + this.AffectedMoType.GetHashCode();
                if (this.AncestorMoId != null)
                    hash = hash * 59 + this.AncestorMoId.GetHashCode();
                if (this.AncestorMoType != null)
                    hash = hash * 59 + this.AncestorMoType.GetHashCode();
                if (this.Code != null)
                    hash = hash * 59 + this.Code.GetHashCode();
                if (this.CreationTime != null)
                    hash = hash * 59 + this.CreationTime.GetHashCode();
                if (this.Description != null)
                    hash = hash * 59 + this.Description.GetHashCode();
                if (this.LastTransitionTime != null)
                    hash = hash * 59 + this.LastTransitionTime.GetHashCode();
                if (this.NumOccurrences != null)
                    hash = hash * 59 + this.NumOccurrences.GetHashCode();
                if (this.OriginalSeverity != null)
                    hash = hash * 59 + this.OriginalSeverity.GetHashCode();
                if (this.PreviousSeverity != null)
                    hash = hash * 59 + this.PreviousSeverity.GetHashCode();
                if (this.RegisteredDevice != null)
                    hash = hash * 59 + this.RegisteredDevice.GetHashCode();
                if (this.Rule != null)
                    hash = hash * 59 + this.Rule.GetHashCode();
                if (this.Severity != null)
                    hash = hash * 59 + this.Severity.GetHashCode();
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
