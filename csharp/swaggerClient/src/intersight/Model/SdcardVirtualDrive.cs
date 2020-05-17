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
    /// Base type for the virtual drive 
    /// </summary>
    [DataContract]
    public partial class SdcardVirtualDrive :  IEquatable<SdcardVirtualDrive>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="SdcardVirtualDrive" /> class.
        /// </summary>
        /// <param name="Enable">Enable Virtual Drive   .</param>
        public SdcardVirtualDrive(bool? Enable = default(bool?))
        {
            this.Enable = Enable;
        }
        
        /// <summary>
        /// Enable Virtual Drive   
        /// </summary>
        /// <value>Enable Virtual Drive   </value>
        [DataMember(Name="Enable", EmitDefaultValue=false)]
        public bool? Enable { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class SdcardVirtualDrive {\n");
            sb.Append("  Enable: ").Append(Enable).Append("\n");
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
            return this.Equals(obj as SdcardVirtualDrive);
        }

        /// <summary>
        /// Returns true if SdcardVirtualDrive instances are equal
        /// </summary>
        /// <param name="other">Instance of SdcardVirtualDrive to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(SdcardVirtualDrive other)
        {
            // credit: http://stackoverflow.com/a/10454552/677735
            if (other == null)
                return false;

            return 
                (
                    this.Enable == other.Enable ||
                    this.Enable != null &&
                    this.Enable.Equals(other.Enable)
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
                if (this.Enable != null)
                    hash = hash * 59 + this.Enable.GetHashCode();
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
