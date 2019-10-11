e number of bytes written to the buffer.
                </returns>
      <param name="buffer">
                    The buffer into which to copy the resulting text. This value cannot be null.
                </param>
      <param name="index">
                    The offset into the buffer where to start copying the result.
                </param>
      <param name="count">
                    The maximum number of bytes to copy into the buffer. The actual number of bytes copied is returned from this method.
                </param>
      <exception cref="T:System.ArgumentNullException">
                    The <paramref name="buffer" /> value is null.
                </exception>
      <exception cref="T:System.InvalidOperationException">
                    The current node is not an element node.
                </exception>
      <exception cref="T:System.ArgumentOutOfRangeException">
                    The index into the buffer or index + count is larger than the allocated buffer size.
                </exception>
      <exception cref="T:System.NotSupportedException">
                    The <see cref="T:System.Xml.XmlTextReader" /> implementation does not support this method.
                </exception>
      <exception cref="T:System.Xml.XmlException">
                    The element contains mixed-content.
                </exception>
      <exception cref="T:System.FormatException">
                    The content cannot be converted to the requested type.
                </exception>
    </member>
    <member name="M:System.Xml.XmlTextReader.ReadElementContentAsBinHex(System.Byte[],System.Int32,System.Int32)">
      <summary>
                    Reads the element and decodes the BinHex content.
                </summary>
      <returns>
                    The number of bytes written to the buffer.
                </returns>
      <param name="buffer">
                    The buffer into which to copy the resulting text. This value cannot be null.
                </param>
      <param name="index">
                    The offset into the buffer where to start copying the result.
                </param>
      <param name="count">
                    The maximum number of bytes to copy into the buffer. The actual number of bytes copied is returned from this method.
                </param>
      <exception cref="T:System.ArgumentNullException">
                    The <paramref name="buffer" /> value is null.
                </exception>
      <exception cref="T:System.InvalidOperationException">
                    The current node is not an element node.
                </exception>
      <exception cref="T:System.ArgumentOutOfRangeException">
                    The index into the buffer or index + count is larger than the allocated buffer size.
                </exception>
      <exception cref="T:System.NotSupportedException">
                    The <see cref="T:System.Xml.XmlReader" /> implementation does not support this method.
                </exception>
      <exception cref="T:System.Xml.XmlException">
                    The element contains mixed-content.
                </exception>
      <exception cref="T:System.FormatException">
                    The content cannot be converted to the requested type.
                </exception>
    </member>
    <member name="P:System.Xml.XmlTextReader.ReadState">
      <summary>
                    Gets the state of the reader.
                </summary>
      <returns>
                    One of the <see cref="T:System.Xml.ReadState" /> values.
                </returns>
    </member>
    <member name="M:System.Xml.XmlTextReader.ReadString">
      <summary>
                    Reads the contents of an element or a text node as a string.
                </summary>
      <returns>
                    The contents of the element or text node. This can be an empty string if the reader is positioned on something other than an element or text node, or if there is no more text content to return in the current context.
              