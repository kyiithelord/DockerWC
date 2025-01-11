FROM odoo:18.0

USER root

COPY ./addons /mnt/extra-addons
COPY ./requirements.txt /opt/odoo/requirements.txt
RUN pip3 install --break-system-packages -r /opt/odoo/requirements.txt

# RUN pip3 install -r /opt/odoo/requirements.txt

USER odoo
CMD ["odoo"]