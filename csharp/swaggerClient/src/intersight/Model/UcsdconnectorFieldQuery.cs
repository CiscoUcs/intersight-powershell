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
    /// Field query is mapping of field name and a SqlQuery object 
    /// </summary>
    [DataContract]
    public partial class UcsdconnectorFieldQuery :  IEquatable<UcsdconnectorFieldQuery>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="UcsdconnectorFieldQuery" /> class.
        /// </summary>
        /// <param name="FieldName">FieldName corresponds to property name of Fanwood Mo  .</param>
        /// <param name="Query">SQL query string   .</param>
        public UcsdconnectorFieldQuery(string FieldName = default(string), UcsdconnectorSqlQuery Query = default(UcsdconnectorSqlQuery))
        {
            this.FieldName = FieldName;
            this.Query = Query;
        }
        
        /// <summary>
        /// FieldName corresponds to property name of Fanwood Mo  
        /// </summary>
        /// <value>FieldName corresponds to property name of Fanwood Mo  </value>
        [DataMember(Name="FieldName", EmitDefaultValue=false)]
        public string FieldName { get; set; }

        /// <summary>
        /// SQL query string   
        /// </summary>
        /// <value>SQL query string   </value>
        [DataMember(Name="Query", EmitDefaultValue=false)]
        public UcsdconnectorSqlQuery Query { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class UcsdconnectorFieldQuery {\n");
            sb.Append("  FieldName: ").Append(FieldName).Append("\n");
            sb.Append("  Query: ").Append(Query).Append("\n");
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
            return this.Equals(obj as UcsdconnectorFieldQuery);
        }

        /// <summary>
        /// Returns true if UcsdconnectorFieldQuery instances are equal
        /// </summary>
        /// <param name="other">Instance of UcsdconnectorFieldQuery to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(UcsdconnectorFieldQuery other)
        {
            // credit: http://stackoverflow.com/a/10454552/677735
            if (other == null)
                return false;

            return 
                (
                    this.FieldName == other.FieldName ||
                    this.FieldName != null &&
                    this.FieldName.Equals(other.FieldName)
                ) && 
                (
                    this.Query == other.Query ||
                    this.Query != null &&
                    this.Query.Equals(other.Query)
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
                if (this.FieldName != null)
                    hash = hash * 59 + this.FieldName.GetHashCode();
                if (this.Query != null)
                    hash = hash * 59 + this.Query.GetHashCode();
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