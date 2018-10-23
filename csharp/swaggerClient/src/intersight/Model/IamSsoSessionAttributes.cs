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
    /// Session attributes required to maintain states of SP and IdP. 
    /// </summary>
    [DataContract]
    public partial class IamSsoSessionAttributes :  IEquatable<IamSsoSessionAttributes>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="IamSsoSessionAttributes" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        public IamSsoSessionAttributes()
        {
        }
        
        /// <summary>
        /// SAML SessionIndex attribute sent by IdP in the assertion. This has to be sent back to IdP in LogoutRequest.   
        /// </summary>
        /// <value>SAML SessionIndex attribute sent by IdP in the assertion. This has to be sent back to IdP in LogoutRequest.   </value>
        [DataMember(Name="IdpSessionIndex", EmitDefaultValue=false)]
        public string IdpSessionIndex { get; private set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class IamSsoSessionAttributes {\n");
            sb.Append("  IdpSessionIndex: ").Append(IdpSessionIndex).Append("\n");
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
            return this.Equals(obj as IamSsoSessionAttributes);
        }

        /// <summary>
        /// Returns true if IamSsoSessionAttributes instances are equal
        /// </summary>
        /// <param name="other">Instance of IamSsoSessionAttributes to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(IamSsoSessionAttributes other)
        {
            // credit: http://stackoverflow.com/a/10454552/677735
            if (other == null)
                return false;

            return 
                (
                    this.IdpSessionIndex == other.IdpSessionIndex ||
                    this.IdpSessionIndex != null &&
                    this.IdpSessionIndex.Equals(other.IdpSessionIndex)
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
                if (this.IdpSessionIndex != null)
                    hash = hash * 59 + this.IdpSessionIndex.GetHashCode();
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
